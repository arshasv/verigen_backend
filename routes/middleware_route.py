from fastapi import APIRouter, HTTPException
import httpx
import os
from dotenv import load_dotenv
from config.database import users_data

load_dotenv()

VERILOG_PROCESS_URL = "http://0.0.0.0:8000/process-verilog/"

middleware_routes = APIRouter()

@middleware_routes.post("/process-file/{file_id}")
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
        
        # Send to Verilog processing service
        async with httpx.AsyncClient() as client:
            response = await client.post(
                VERILOG_PROCESS_URL,
                json={"blob_url": file_url},
                headers={"Content-Type": "application/json"}
            )
            
            if response.status_code != 200:
                raise HTTPException(
                    status_code=response.status_code,
                    detail=f"Verilog processing failed: {response.text}"
                )
                
            return {
                "message": "File sent for processing",
                "file_url": file_url,
                "processing_result": response.json()
            }
            
    except httpx.RequestError as e:
        raise HTTPException(
            status_code=500,
            detail=f"Failed to connect to Verilog service: {str(e)}"
        )
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))