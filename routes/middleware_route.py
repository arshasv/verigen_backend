from fastapi import APIRouter, HTTPException
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data
from pydantic import BaseModel

load_dotenv()

# URL configurations
VERILOG_PROCESS_URL = os.getenv("VERILOG_PROCESS_URL", "http://0.0.0.0:8000/process-verilog/")
ADDITIONAL_API_URL = os.getenv("ADDITIONAL_API_URL", "http://localhost:5000/run_openlane/")
UPLOAD_BLOB_URL = os.getenv("UPLOAD_BLOB_URL", "http://localhost:5000/upload_to_blob/")

# Ensure all URLs end with trailing slash
for url in [VERILOG_PROCESS_URL, ADDITIONAL_API_URL, UPLOAD_BLOB_URL]:
    if not url.endswith('/'):
        url += '/'

middleware_routes = APIRouter()

class DesignFolderRequest(BaseModel):
    design_folder: str




@middleware_routes.post("/Icarus/{file_id}/")  # Added trailing slash
async def process_verilog_file(file_id: str):
    try:
        # Fetch the file URL from the database
        file_data = users_data.find_one(
            {"file_urls.filename": file_id},
            {"file_urls.$": 1}
        )
        
        if not file_data or not file_data.get("file_urls"):
            raise HTTPException(status_code=404, detail="File not found")
        
        file_url = file_data["file_urls"][0]["url"]
        
        # Send to Verilog processing service with proper timeout
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                VERILOG_PROCESS_URL,
                json={"blob_url": file_url},
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                follow_redirects=True  # Handle redirects automatically
            )
            
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Verilog processing failed: {response.text}"
                )
            
            # Validate response structure
            processing_result = response.json()
            if not isinstance(processing_result, dict):
                raise HTTPException(status_code=500, detail="Invalid response from Verilog processing service")
            
            return {
                "message": "File sent for processing",
                "file_url": file_url,
                "processing_result": processing_result
            }
            
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to Verilog service: {str(e)}"
        )
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@middleware_routes.post("/Openlane_2/{file_id}/")  # Added trailing slash
async def process_openlane2(file_id: str):
    try:
        # Fetch the file URL from the database
        file_data = users_data.find_one(
            {"file_urls.filename": file_id},
            {"file_urls.$": 1}
        )
        
        if not file_data or not file_data.get("file_urls"):
            raise HTTPException(status_code=404, detail="File not found")
        
        file_url = file_data["file_urls"][0]["url"]
        
        # Send to additional API with proper timeout
        async with httpx.AsyncClient(timeout=30.0) as client:
            response = await client.post(
                ADDITIONAL_API_URL,
                json={"blob_url": file_url},
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                follow_redirects=True  # Handle redirects automatically
            )
            
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Failed to send file to API: {response.text}"
                )
            
            # Validate response structure
            api_response = response.json()
            if not isinstance(api_response, dict):
                raise HTTPException(status_code=500, detail="Invalid response from additional API")
            
            return {
                "message": "File sent to API",
                "file_url": file_url,
                "api_response": api_response
            }
            
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to API: {str(e)}"
        )
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
    




@middleware_routes.post("/download_results/{design_folder}/")
async def download_results(design_folder: str):
    try:
        # Create request payload
        request_data = DesignFolderRequest(design_folder=design_folder)
        
        # Send request to upload_to_blob endpoint
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                UPLOAD_BLOB_URL,
                json=request_data.dict(),
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                follow_redirects=True
            )
            
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Failed to upload design folder: {response.text}"
                )
            
            # Get the blob URL from the response
            result = response.json()
            if not isinstance(result, dict) or "blob_url" not in result:
                raise HTTPException(
                    status_code=500,
                    detail="Invalid response from upload service"
                )
            
            # Store the result in the database
            blob_url = result["blob_url"]
            update_result = users_data.update_one(
                {"design_folder": design_folder},
                {
                    "$set": {
                        "result_url": blob_url,
                        "status": "completed"
                    }
                },
                upsert=True
            )
            
            if not update_result.acknowledged:
                raise HTTPException(
                    status_code=500,
                    detail="Failed to update database with result URL"
                )
            
            return {
                "message": "Design results uploaded and stored successfully",
                "design_folder": design_folder,
                "result_url": blob_url
            }
            
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to upload service: {str(e)}"
        )
        
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to process download request: {str(e)}"
        )
