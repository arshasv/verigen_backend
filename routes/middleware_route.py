from fastapi import APIRouter, HTTPException
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data
from pydantic import BaseModel
import asyncio
import json

# Import RabbitMQ Manager from separate module
from .rabbitmq_manager import AsyncRabbitMQManager

load_dotenv()

# URL configurations with trailing slash handling
VERILOG_PROCESS_URL = os.getenv("VERILOG_PROCESS_URL", "http://0.0.0.0:8000/process-verilog/").rstrip('/') + '/'
ADDITIONAL_API_URL = os.getenv("ADDITIONAL_API_URL", "http://localhost:5000/run_openlane/").rstrip('/') + '/'
UPLOAD_BLOB_URL = os.getenv("UPLOAD_BLOB_URL", "http://localhost:5000/upload_to_blob/").rstrip('/') + '/'

middleware_routes = APIRouter()

class DesignFolderRequest(BaseModel):
    file_id: str


@middleware_routes.post("/Icarus/")
async def process_verilog_file(request: DesignFolderRequest):
    file_id = request.file_id
    notification_manager = None
    try:
        # Find file data
        file_data = users_data.find_one(
            {"file_urls.filename": file_id},
            {"file_urls.$": 1}
        )
        if not file_data or "file_urls" not in file_data:
            raise HTTPException(status_code=404, detail="File not found")
        file_url = file_data["file_urls"][0]["url"]
        
        # Initialize RabbitMQ manager
        notification_manager = AsyncRabbitMQManager()
        await notification_manager.connect()
        await notification_manager.setup_consumer(file_id)
        
        # Send request to Verilog processing service
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                VERILOG_PROCESS_URL,
                json={"blob_url": file_url},
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                }
            )
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Verilog processing failed: {response.text}"
                )
        
        # Wait for notification
        try:
            notification_result = await notification_manager.get_notification(timeout=120)
        except asyncio.TimeoutError:
            raise HTTPException(
                status_code=504,
                detail="Timeout waiting for RabbitMQ notification"
            )
        
        return {
            "message": "File processing completed",
            "file_id": file_id,
            "notification": {
                "status": notification_result.get("status"),
                "file": notification_result.get("file", file_id),
                "path": notification_result.get("path"),
                "processing_details": {
                    "file_id": file_id,
                    "original_url": file_url,
                    "process_time": "completed"
                }
            }
        }
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to Verilog service: {str(e)}"
        )
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Processing error: {str(e)}"
        )
    finally:
        if notification_manager:
            await notification_manager.cleanup()


@middleware_routes.post("/Openlane_2/")
async def process_openlane2(request: DesignFolderRequest):
    file_id = request.file_id
    
    try:
        file_data = users_data.find_one({"file_urls.filename": file_id}, {"file_urls.$": 1})
        if not file_data or not file_data.get("file_urls"):
            raise HTTPException(status_code=404, detail="File not found")
        file_url = file_data["file_urls"][0]["url"]
        
        async with httpx.AsyncClient(timeout=30.0) as client:
            response = await client.post(
                ADDITIONAL_API_URL,
                json={"blob_url": file_url},
                headers={"Content-Type": "application/json", "Accept": "application/json"},
            )
            if response.status_code != 200:
                raise HTTPException(status_code=response.status_code, detail=f"Failed to send file to API: {response.text}")
            api_response = response.json()
            if not isinstance(api_response, dict):
                raise HTTPException(status_code=500, detail="Invalid response from additional API")
            
            return {
                "message": "File sent to API",
                "file_id": file_id,
                "file_url": file_url,
                "api_response": api_response,
            }
    except httpx.RequestError as e:
        raise HTTPException(status_code=500, detail=f"Failed to connect to API: {str(e)}")
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@middleware_routes.post("/download_results/")
async def download_results(request: DesignFolderRequest):
    try:
        design_folder = request.file_id  # Using file_id to store design_folder
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                UPLOAD_BLOB_URL,
                json={"design_folder": design_folder},
                headers={"Content-Type": "application/json", "Accept": "application/json"},
            )
            if response.status_code != 200:
                raise HTTPException(status_code=response.status_code, detail=f"Failed to upload design folder: {response.text}")
            result = response.json()
            if not isinstance(result, dict) or "blob_url" not in result:
                raise HTTPException(status_code=500, detail="Invalid response from upload service")
            
            blob_url = result["blob_url"]
            update_result = users_data.update_one(
                {"design_folder": design_folder},
                {"$set": {"result_url": blob_url, "status": "completed"}},
                upsert=True,
            )
            if not update_result.acknowledged:
                raise HTTPException(status_code=500, detail="Failed to update database with result URL")
            
            return {
                "message": "Design results uploaded and stored successfully",
                "design_folder": design_folder,
                "result_url": blob_url,
            }
    except httpx.RequestError as e:
        raise HTTPException(status_code=500, detail=f"Failed to connect to upload service: {str(e)}")
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Failed to process download request: {str(e)}")