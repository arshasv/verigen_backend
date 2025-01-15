from fastapi import APIRouter, HTTPException
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data
from pydantic import BaseModel
import asyncio
import pika
from typing import Dict, Optional
from contextlib import asynccontextmanager


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


# Global dictionary to store notifications by file_id
notifications: Dict[str, Optional[dict]] = {}

class RabbitMQNotificationManager:
    def __init__(self):
        self.connection = None
        self.channel = None
        self.queue_name = "verilog_processing"
        
    async def connect(self):
        # Create connection to RabbitMQ
        self.connection = await asyncio.get_event_loop().run_in_executor(
            None,
            lambda: pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
        )
        self.channel = self.connection.channel()
        
        # Declare queue
        self.channel.queue_declare(queue=self.queue_name, durable=True)
        
    async def setup_consumer(self, file_id: str):
        if not self.connection or self.connection.is_closed:
            await self.connect()
            
        def callback(ch, method, properties, body):
            message = eval(body.decode())
            if message.get('file') == file_id:
                notifications[file_id] = message
                ch.basic_ack(delivery_tag=method.delivery_tag)
        
        self.channel.basic_consume(
            queue=self.queue_name,
            on_message_callback=callback
        )
        
    async def start_consuming(self, timeout: int = 30):
        start_time = asyncio.get_event_loop().time()
        
        while asyncio.get_event_loop().time() - start_time < timeout:
            # Process messages for a short period
            await asyncio.get_event_loop().run_in_executor(
                None,
                lambda: self.connection.process_data_events(time_limit=1)
            )
            await asyncio.sleep(0.1)
            
        if self.connection and not self.connection.is_closed:
            self.connection.close()


@middleware_routes.post("/Icarus/{file_id}/")
async def process_verilog_file(file_id: str):
    try:
        # Fetch the file URL from the database
        file_data = users_data.find_one(
            {"file_urls.filename": file_id},
            {"file_urls.$": 1}
        )
        
        if not file_data or "file_urls" not in file_data:
            raise HTTPException(status_code=404, detail="File not found")
            
        file_url = file_data["file_urls"][0]["url"]
        
        # Initialize notification manager
        notification_manager = RabbitMQNotificationManager()
        await notification_manager.connect()
        await notification_manager.setup_consumer(file_id)
        
        # Clear any existing notifications for this file_id
        notifications[file_id] = None
        
        # Send the file to the Verilog processing service
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
        
        # Start consuming messages and wait for notification
        await notification_manager.start_consuming(timeout=30)
        
        # Check if we received a notification
        notification_result = notifications.get(file_id)
        if not notification_result:
            raise HTTPException(
                status_code=500,
                detail="Timeout waiting for RabbitMQ notification"
            )
            
        # Return the processing result with notification details
        return {
            "message": "File processing completed",
            "notification": {
                "status": notification_result["status"],
                "file": notification_result["file"],
                "path": notification_result["path"],
                "processing_details": {
                    "file_id": file_id,
                    "original_url": file_url,
                    "process_time": "completed",
                }
            }
        }
        
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to Verilog service: {str(e)}"
        )
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
    finally:
        # Cleanup notification entry
        if file_id in notifications:
            del notifications[file_id]







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
