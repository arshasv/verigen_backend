from fastapi import APIRouter, HTTPException
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data
from pydantic import BaseModel
import asyncio
import json

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
    os.getenv("ADDITIONAL_API_URL", "http://localhost:5000/run_openlane/").rstrip("/")
    + "/"
)
UPLOAD_BLOB_URL = (
    os.getenv("UPLOAD_BLOB_URL", "http://localhost:5000/upload_to_blob/").rstrip("/")
    + "/"
)

middleware_routes = APIRouter()


# Updated request model to include fcm_token
class DesignFolderRequest(BaseModel):
    file_id: str
    fcm_token: str  # Add this field to the request model




# ------------------------- Icarus ApI -------------------------

@middleware_routes.post("/Icarus/")
async def process_verilog_file(request: DesignFolderRequest):
    file_id = request.file_id
    fcm_token = request.fcm_token  # Extract the FCM token from the request
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
        await notification_manager.setup_consumer(fcm_token)  # Pass the FCM token here

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


















# ------------------------- Openlane 2 API  -------------------------

# @middleware_routes.post("/Openlane_2/")
# async def process_openlane2(request: DesignFolderRequest):
#     file_id = request.file_id
#     fcm_token = request.fcm_token  # Extract the FCM token from the request
#     notification_manager = None
#     try:
#         file_data = users_data.find_one(
#             {"file_urls.filename": file_id}, {"file_urls.$": 1}
#         )
#         if not file_data or not file_data.get("file_urls"):
#             raise HTTPException(status_code=404, detail="File not found")
#         file_url = file_data["file_urls"][0]["url"]
      
#         # Initialize RabbitMQ manager
#         notification_manager = AsyncRabbitMQManagerOpenlane(queue_name="verilog_processing")
#         await notification_manager.connect()
#         await notification_manager.setup_consumer(fcm_token)  # Pass the FCM token here



#         async with httpx.AsyncClient(timeout=30.0) as client:
#             response = await client.post(
#                 ADDITIONAL_API_URL,
#                 json={"blob_url": file_url},
#                 headers={
#                     "Content-Type": "application/json",
#                     "Accept": "application/json",
#                 },
#             )
#             if response.status_code != 200:
#                 raise HTTPException(
#                     status_code=response.status_code,
#                     detail=f"Failed to send file to API: {response.text}",
#                 )
#         # Wait for notification
#         try:
#             notification_result = await notification_manager.get_notification(
#                 timeout=60
#             )
#         except asyncio.TimeoutError:
#             raise HTTPException(
#                 status_code=504, detail="Timeout waiting for RabbitMQ notification"
#             )

#         return {
#             "message": "File processing completed",
#             "file_id": file_id,
#             "notification": {
#                 "status": notification_result.get("status"),
#                 "file": notification_result.get("file", file_id),
#                 "path": notification_result.get("path"),
#                 "processing_details": {
#                     "file_id": file_id,
#                     "original_url": file_url,
#                     "process_time": "completed",
#                 },
#             },
#         }

#     except httpx.RequestError as e:
#         raise HTTPException(
#             status_code=500, detail=f"Failed to connect to Verilog service: {str(e)}"
#         )

#     except Exception as e:
#         raise HTTPException(status_code=500, detail=f"Processing error: {str(e)}")

#     finally:
#         if notification_manager:
#             await notification_manager.cleanup()


import logging
import os
from dotenv import load_dotenv

load_dotenv()

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)





async def send_delayed_notification(fcm_token, file_id, file_url):
    # Wait a short time to simulate processing
    await asyncio.sleep(2)
    
    # Create mock success response
    success_response = {
        "status": "success"
    }
    
    # Send to FCM
    try:
        notification_title = "Verilog Processing Update"
        notification_body = f"OpenLane flow - {success_response['status']}"
        
        from notification.firebase_utils import initialize_firebase, send_push_notification
        initialize_firebase()
        send_push_notification(fcm_token, notification_title, notification_body)
        logger.info("Delayed mock push notification sent successfully.")
    except Exception as e:
        logger.error(f"Failed to send delayed mock notification: {e}")

@middleware_routes.post("/Openlane_2/")
async def process_openlane2(request: DesignFolderRequest):
    file_id = request.file_id
    fcm_token = request.fcm_token
    
    try:
        # Validate file exists
        file_data = users_data.find_one(
            {"file_urls.filename": file_id}, {"file_urls.$": 1}
        )
        if not file_data or not file_data.get("file_urls"):
            raise HTTPException(status_code=404, detail="File not found")
        file_url = file_data["file_urls"][0]["url"]
        
        # Start background task to send notification after delay
        asyncio.create_task(send_delayed_notification(fcm_token, file_id, file_url))
        
        # Return immediate success
        return {
            "message": "File processing started successfully",
            "file_id": file_id,
            "status": "processing",
            "processing_details": {
                "file_id": file_id,
                "original_url": file_url,
            },
        }
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Processing error: {str(e)}")

















# ------------------------- Download Results -------------------------

@middleware_routes.post("/download_results/")
async def download_results(request: DesignFolderRequest):
    try:
        design_folder = request.file_id  # Using file_id to store design_folder
        async with httpx.AsyncClient(timeout=300.0) as client:
            response = await client.post(
                UPLOAD_BLOB_URL,
                json={"design_folder": design_folder},
                headers={
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                },
            )
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Failed to upload design folder: {response.text}",
                )
            result = response.json()
            if not isinstance(result, dict) or "blob_url" not in result:
                raise HTTPException(
                    status_code=500, detail="Invalid response from upload service"
                )

            blob_url = result["blob_url"]
            update_result = users_data.update_one(
                {"design_folder": design_folder},
                {"$set": {"result_url": blob_url, "status": "completed"}},
                upsert=True,
            )
            if not update_result.acknowledged:
                raise HTTPException(
                    status_code=500, detail="Failed to update database with result URL"
                )

            return {
                "message": "Design results uploaded and stored successfully",
                "design_folder": design_folder,
                "result_url": blob_url,
            }
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500, detail=f"Failed to connect to upload service: {str(e)}"
        )
    except Exception as e:
        raise HTTPException(
            status_code=500, detail=f"Failed to process download request: {str(e)}"
        )
