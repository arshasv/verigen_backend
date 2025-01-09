from fastapi import APIRouter, HTTPException, status, Depends
from models.user import User, UserLogin,LoginRequest
from config.database import users_data
from datetime import datetime, timedelta
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from typing import Annotated
from models.user import SecurityQuestionRequest, ResetPasswordRequest
from utils.auth import (
    verify_password,
    hash_password,
    create_access_token,
    ACCESS_TOKEN_EXPIRE_MINUTES
)
import re

router = APIRouter()
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="login")

def is_valid_password(password: str) -> bool:
    """
    Check if a password is valid based on the following criteria:
    - At least 8 characters long
    - Contains at least one uppercase letter
    - Contains at least one lowercase letter
    - Contains at least one digit
    - Contains at least one special character
    """
    pattern = r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,}$"
    return bool(re.match(pattern, password))
  

def is_valid_username(name: str) -> bool:
    """Check if username contains only alphabet characters and is at least 3 characters long"""
    return name.isalpha() and len(name) >= 3

def is_duplicate_email(email: str) -> bool:
    """Check for duplicate email in the users_data collection"""
    return users_data.find_one({"email": email}) is not None



@router.post("/register", status_code=status.HTTP_201_CREATED)
async def user_signup(user: User):
    # Check if email already exists
    if is_duplicate_email(user.email):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Email already registered"
        )
    
    # Validate password
    if not is_valid_password(user.password):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Password must be at least 8 characters long and contain letters, numbers, and special characters"
        )
    

    # Hash the password and insert the user
    user_dict = user.model_dump()  # Changed from dict() to model_dump() for newer Pydantic
    user_dict["password"] = hash_password(user.password)
    user_dict["disabled"] = False
    user_dict["file_urls"] = []
    users_data.insert_one(user_dict)
    
    return {"message": "User created successfully"}

    
@router.post("/login")
async def login(login_data: LoginRequest):
    # Find user by email
    user = users_data.find_one({"email": login_data.email})
    
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    # Verify password
    if not verify_password(login_data.password, user["password"]):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )

    # Create access token
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={"sub": user["email"], "name": user["name"]},
        expires_delta=access_token_expires
    )
    
    return {
        "access_token": access_token,
        "token_type": "bearer",
        "expires_in": ACCESS_TOKEN_EXPIRE_MINUTES 
    }








# Add these routes to your existing router
@router.post("/forgot-password/security-question")
async def get_security_question(request: SecurityQuestionRequest):
    # Find user by email and name
    user = users_data.find_one({
        "email": request.email,
    
    })
    
    if not user:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="No user found with the provided email and name"
        )
    
    # Return only the security question
    return {
        "security_question": user["security_question"]
    }

@router.post("/forgot-password/reset")
async def reset_password(request: ResetPasswordRequest):
    # Find user by email and name
    user = users_data.find_one({
        "email": request.email,
      
    })
    
    if not user:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="No user found with the provided email "
        )
    
    # Verify security question answer
    if user["answer"].lower() != request.answer.lower():
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Incorrect answer to security question"
        )
    
    # Validate new password
    if not is_valid_password(request.new_password):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Password must be at least 8 characters long and contain letters, numbers, and special characters"
        )
    
    # Hash new password and update in database
    hashed_password = hash_password(request.new_password)
    result = users_data.update_one(
        {"email": request.email},
        {"$set": {"password": hashed_password}}
    )
    
    if result.modified_count == 0:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Failed to update password"
        )
    
    return {"message": "Password reset successfully"}





