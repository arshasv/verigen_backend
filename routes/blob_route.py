from fastapi import APIRouter, Form, UploadFile, File, HTTPException, Depends
from fastapi.security import OAuth2PasswordBearer
from models.user import TokenData
from utils.auth import get_current_user  # Assuming you have a function to get the current user from the token
import os
from dotenv import load_dotenv
from azure_blob_functions.blob import upload_blob

load_dotenv() 


CONTAINER_NAME = os.getenv('CONTAINER_NAME')

# Initialize the OAuth2PasswordBearer
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="login")

blob_routes = APIRouter()

@blob_routes.post("/upload")
async def upload(container: str = CONTAINER_NAME, file: UploadFile = File(...), token: str = Depends(oauth2_scheme)):
    # Get the current user from the token
    current_user = get_current_user(token)  # This function should decode the token and return the user

    if not container:
        raise HTTPException(status_code=400, detail="Container name is required.")
    
    try:
        data = await file.read()
        filename = file.filename
        upload_result = upload_blob(filename, container, data)
        return {"message": "File uploaded successfully", "result": upload_result, "uploaded_by": current_user.email}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))