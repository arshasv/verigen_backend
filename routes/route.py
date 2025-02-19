from fastapi import APIRouter, HTTPException, status, Depends, Security, Query
from fastapi.security import (
    OAuth2PasswordBearer,
    OAuth2PasswordRequestForm,
    HTTPBearer,
    HTTPAuthorizationCredentials,
)
from jose import JWTError, jwt
from typing import List
from datetime import timedelta
import os
import re
from dotenv import load_dotenv
from config.database import users_data  # MongoDB user collection
from models.user import (
    User,
    UserLogin,
    LoginRequest,
    SecurityQuestionRequest,
    ResetPasswordRequest,
)
from utils.auth import (
    verify_password,
    hash_password,
    create_access_token,
    ACCESS_TOKEN_EXPIRE_MINUTES,
)

load_dotenv()
router = APIRouter()
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="login")
security = HTTPBearer()


SECRET_KEY = os.getenv("SECRET_KEY")  # Store securely in env variables
ALGORITHM = "HS256"

# ------------------------- Utility Functions -------------------------


def is_valid_password(password: str) -> bool:
    """Validate password with required security criteria."""
    pattern = r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,}$"
    return bool(re.match(pattern, password))


def is_duplicate_email(email: str) -> bool:
    """Check if email already exists in database."""
    return users_data.find_one({"email": email}) is not None


# ------------------------- Authentication Routes -------------------------


@router.post("/register", status_code=status.HTTP_201_CREATED)
async def user_signup(user: User):
    """User registration endpoint."""
    if is_duplicate_email(user.email):
        raise HTTPException(status_code=400, detail="Email already registered")

    if not is_valid_password(user.password):
        raise HTTPException(status_code=400, detail="Weak password")

    # Hash and store user details
    user_dict = user.dict()
    user_dict["password"] = hash_password(user.password)
    user_dict["file_urls"] = []  # Default empty file list
    users_data.insert_one(user_dict)

    return {"message": "User registered successfully"}


@router.post("/login")
async def login(login_data: LoginRequest):
    """User login endpoint that returns an access token."""
    user = users_data.find_one({"email": login_data.email})

    if not user or not verify_password(login_data.password, user["password"]):
        raise HTTPException(status_code=401, detail="Incorrect email or password")

    access_token = create_access_token(
        data={"sub": user["email"], "user_id": str(user["_id"])},
        expires_delta=timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES),
    )

    return {"access_token": access_token, "token_type": "bearer"}


# ------------------------- Password Reset Routes -------------------------


@router.post("/forgot-password/security-question")
async def get_security_question(request: SecurityQuestionRequest):
    """Retrieve security question for password reset."""
    user = users_data.find_one({"email": request.email})
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return {"security_question": user.get("security_question", "No question set")}


@router.post("/forgot-password/reset")
async def reset_password(request: ResetPasswordRequest):
    """Reset password after answering the security question."""
    user = users_data.find_one({"email": request.email})
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    if user.get("answer", "").lower() != request.answer.lower():
        raise HTTPException(
            status_code=400, detail="Incorrect security question answer"
        )

    if not is_valid_password(request.new_password):
        raise HTTPException(status_code=400, detail="Weak password")

    users_data.update_one(
        {"email": request.email},
        {"$set": {"password": hash_password(request.new_password)}},
    )

    return {"message": "Password reset successful"}


# ------------------------- JWT Authentication -------------------------


def get_current_user(credentials: HTTPAuthorizationCredentials = Security(security)):
    """Extracts and verifies JWT token."""
    token = credentials.credentials
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        email = payload.get("sub")
        if not email:
            raise HTTPException(status_code=401, detail="Invalid credentials")
    except JWTError:
        raise HTTPException(status_code=401, detail="Invalid token")

    user = users_data.find_one({"email": email})
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    return user


# ------------------------- Fetch User Files -------------------------


@router.get("/fetch_files", response_model=List[dict])
async def fetch_files(current_user: dict = Depends(get_current_user)):
    """Fetch files uploaded by the current user."""
    user = users_data.find_one(
        {"email": current_user["email"]}, {"file_urls": 1, "_id": 0}
    )

    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    return user.get("file_urls", [])
