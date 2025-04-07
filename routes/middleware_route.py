from fastapi import FastAPI, HTTPException, Path, Body, APIRouter, Depends
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data
from pydantic import BaseModel
from typing import List
import asyncio
import json
import sys

# Import RabbitMQ Manager from separate module
from .rabbitmq_manager_1 import AsyncRabbitMQManagerIcarus
from .rabbitmq_manager_2 import AsyncRabbitMQManagerOpenlane

load_dotenv()

# URL configurations with trailing slash handling
VERILOG_PROCESS_URL = (
    os.getenv("VERILOG_PROCESS_URL", "http://0.0.0.0:8000/process-verilog/").rstrip("/")
    + "/"
)
ADDITIONAL_API_URL = (
    os.getenv("ADDITIONAL_API_URL", "http://0.0.0.0:5000/run_openlane").rstrip("/")
    + "/"
)
UPLOAD_BLOB_URL = (
    os.getenv("UPLOAD_BLOB_URL", "http://0.0.0.0:5000/upload_to_blob/").rstrip("/")
    + "/"
)

middleware_routes = APIRouter()


# Updated request model to include fcm_token
class DesignFolderRequest(BaseModel):
    file_id: str
    fcm_token: str


# Define the request body model using Pydantic
class PinConfiguration(BaseModel):
    N: List[str]
    S: List[str]
    E: List[str]
    W: List[str]


class OpenLanePayload(BaseModel):
    clock_port: str
    clock_period: int
    die_area: str
    pin_configuration: PinConfiguration
    file_id: str
    fcm_token: str







# ------------------------- Icarus API -------------------------

@middleware_routes.post("/Icarus/")
async def process_verilog_file(request: DesignFolderRequest):
    file_id = request.file_id
    fcm_token = request.fcm_token
    notification_manager = None

    try:
        # Find file data
        file_data = users_data.find_one(
            {"file_urls.filename": file_id}, {"file_urls.$": 1}
        )
        if not file_data or "file_urls" not in file_data:
            raise HTTPException(status_code=404, detail="File not found")
        file_url = file_data["file_urls"][0]["url"]

        # Initialize RabbitMQ manager
        notification_manager = AsyncRabbitMQManagerIcarus(queue_name="verilog_processing")
        await notification_manager.connect()
        await notification_manager.setup_consumer(fcm_token)

        # Send request to Verilog processing service
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                VERILOG_PROCESS_URL,
                json={"blob_url": file_url},
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                },
            )
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Verilog processing failed: {response.text}",
                )

        # Wait for notification
        try:
            notification_result = await notification_manager.get_notification(
                timeout=60
            )
        except asyncio.TimeoutError:
            raise HTTPException(
                status_code=504, detail="Timeout waiting for RabbitMQ notification"
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
                    "process_time": "completed",
                },
            },
        }

    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500, detail=f"Failed to connect to Verilog service: {str(e)}"
        )

    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Processing error: {str(e)}")

    finally:
        if notification_manager:
            await notification_manager.cleanup()







@middleware_routes.post("/Openlane_2/")
async def process_openlane2(payload: OpenLanePayload):
    file_id = payload.file_id
    fcm_token = payload.fcm_token
    notification_manager = None
    
    try:
        file_data = users_data.find_one(
            {"file_urls.filename": file_id}, {"file_urls.$": 1}
        )
        if not file_data or not file_data.get("file_urls"):
            raise HTTPException(status_code=404, detail="File not found")
        file_url = file_data["file_urls"][0]["url"]
        
        # Initialize RabbitMQ manager
        notification_manager = AsyncRabbitMQManagerOpenlane(queue_name="verilog_queue")
        await notification_manager.connect()
        await notification_manager.setup_consumer(fcm_token)
        
        api_payload = {
            "blob_url": file_url,
            "design_name": file_id,
            "clock_port": payload.clock_port,
            "clock_period": payload.clock_period,
            "die_area": payload.die_area,
            "pin_configuration": payload.pin_configuration.dict()
        }
        
        async with httpx.AsyncClient(timeout=300.0, follow_redirects=True) as client:
            response = await client.post(
                ADDITIONAL_API_URL,
                json=api_payload,
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                },
            )
            if response.status_code not in [200, 307]:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Failed to send file to API: {response.text}",
                )
        
        try:
            notification_result = await notification_manager.get_notification(timeout=300)
        except asyncio.TimeoutError:
            return {
                "message": "Processing taking longer than expected",
                "file_id": file_id,
                "status": "pending"
            }
        
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
                    "process_time": "completed",
                },
            },
        }
    
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500, detail=f"Failed to connect to API: {str(e)}"
        )
    
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Processing error: {str(e)}")
    
    finally:
        if notification_manager:
            await notification_manager.cleanup()