from fastapi import APIRouter, File, UploadFile, HTTPException, Security
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from models.user import TokenData
from utils.auth import get_current_user
from datetime import datetime
import os
from dotenv import load_dotenv
from azure_blob_functions.blob import upload_blob
from config.database import users_data

load_dotenv()
load_dotenv()

CONTAINER_NAME = os.getenv('CONTAINER_NAME')

security = HTTPBearer()
blob_routes = APIRouter()

@blob_routes.post("/upload")
async def upload(
    container: str = CONTAINER_NAME,
    file: UploadFile = File(...),
    credentials: HTTPAuthorizationCredentials = Security(security)
):
    token = credentials.credentials
    current_user = get_current_user(token)
    
    if not container:
        raise HTTPException(status_code=400, detail="Container name is required.")
    
    try:
        data = await file.read()
        filename = file.filename
        upload_result = upload_blob(filename, container, data)
        
        file_url = f"https://generativeaidocs.blob.core.windows.net/{container}/{filename}"
        timestamp = datetime.utcnow().isoformat()
        
        update_result = users_data.update_one(
            {"email": current_user.email},
            {"$push": {"file_urls": {"filename": filename, "url": file_url, "timestamp": timestamp}}}
        )
        
        if update_result.modified_count == 0:
            raise HTTPException(status_code=404, detail="User not found or no update was made.")
            
        return {
            "message": "File uploaded successfully",
            "result": upload_result,
            "uploaded_by": current_user.email,
            "file_url": file_url
        }
        
    except Exception as e:
        print(f"Error occurred: {str(e)}")
        raise HTTPException(status_code=500, detail=str(e))