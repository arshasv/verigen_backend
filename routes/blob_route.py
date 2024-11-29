from fastapi import APIRouter, File, UploadFile, HTTPException, Depends, Security
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from models.user import TokenData
from utils.auth import get_current_user
import os
from dotenv import load_dotenv
from azure_blob_functions.blob import upload_blob

load_dotenv()

CONTAINER_NAME = os.getenv('CONTAINER_NAME')

# Initialize the HTTPBearer scheme
security = HTTPBearer()
blob_routes = APIRouter()

@blob_routes.post("/upload")
async def upload(
    container: str = CONTAINER_NAME,
    file: UploadFile = File(...),
    credentials: HTTPAuthorizationCredentials = Security(security)
):
    # Get the token from the authorization header
    token = credentials.credentials
    
    # Get the current user from the token
    current_user = get_current_user(token)

    if not container:
        raise HTTPException(status_code=400, detail="Container name is required.")
    
    try:
        data = await file.read()
        filename = file.filename
        upload_result = upload_blob(filename, container, data)
        
        # Construct the file URL 
        # Assuming you're using Azure Blob Storage, the URL would look like:
        file_url = f"https://{os.getenv('AZURE_STORAGE_ACCOUNT_NAME')}.blob.core.windows.net/{container}/{filename}"
        
        # Update user document to add file URL
        from config.database import users_data
        users_data.update_one(
            {"email": current_user.email},
            {"$push": {"file_urls": file_url}}
        )
        
        return {
            "message": "File uploaded successfully",
            "result": upload_result,
            "uploaded_by": current_user.email,
            "file_url": file_url
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))