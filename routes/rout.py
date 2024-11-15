from fastapi import APIRouter, HTTPException, status
from models.user import User
from config.database import users_data
from schemas.schema import users_list
from utils.pw_hash import hash_password
import re  # For regex-based password validation

router = APIRouter()

# Helper function to validate password
def is_valid_password(password: str) -> bool:
    """Check if password is at least 8 characters and alphanumeric"""
    return len(password) >= 8 and bool(re.search(r'[A-Za-z]', password)) and bool(re.search(r'[0-9]', password) ) and bool(re.search(r'[\W_]', password))

#Helper function to validate username
def is_valid_username(name: str) -> bool:
    """Check if username is at least 3 characters and alphanumeric"""
    return name.isalpha()

# Helper function to check for duplicate emails
def is_duplicate_email(email: str) -> bool:
    """Check for duplicate email in the users_data collection"""
    return users_data.find_one({"email": email}) is not None

@router.get("/")
async def get_users(): 
    users = users_list(users_data.find())
    return users

@router.post("/Register")
async def post_user_credentials(user: User):
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
            detail="Password must be at least 8 characters long and contain both letters, numbers & special characters"
        )
    
    if not is_valid_username(user.username):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="username should contain only alphabet"
        )


    # Hash the password and insert the user
    user_dict = dict(user)
    user_dict["password"] = hash_password(user_dict["password"])
    users_data.insert_one(user_dict)
    return {"message": "User created successfully"}
