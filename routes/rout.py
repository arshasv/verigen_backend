from fastapi import APIRouter, HTTPException, status, Depends
from models.user import User, UserLogin
from config.database import users_data
from schemas.schema import users_list
from datetime import datetime, timedelta
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from typing import Annotated
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
    """Check if password is at least 8 characters, alphanumeric, and contains a special character"""
    pattern = r"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
    return bool(re.search(pattern, password))

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
    users_data.insert_one(user_dict)
    
    return {"message": "User created successfully"}

@router.post("/login")
async def login(form_data: Annotated[OAuth2PasswordRequestForm, Depends()]):
    # Find user by email
    user = users_data.find_one({"email": form_data.username})  # OAuth2 form uses username field for email
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    # Verify password
    if not verify_password(form_data.password, user["password"]):
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
