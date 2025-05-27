# from fastapi import APIRouter, FastAPI, HTTPException
# from pydantic import BaseModel, Field
# from typing import Optional, List, Dict, Any
# import httpx
# import logging
# import uvicorn

# # Configure logging
# logging.basicConfig(level=logging.INFO)
# logger = logging.getLogger(__name__)

# # Create FastAPI app
# app = FastAPI(title="OpenROAD Mock API", description="API for forwarding OpenROAD configuration requests")

# # Define the router
# mock_routes = APIRouter()

# # Define the OpenROADRequest model
# class OpenROADRequest(BaseModel):
#     File_url: str = Field(..., description="URL of the file to be processed")
#     design_name: str = Field(..., description="Name of the design")
#     clock_period: float = Field(..., description="Clock period in nanoseconds")
#     clock_port: str = Field(..., description="Clock port name")
#     north_pins: str = Field(..., description="Comma-separated list of pins for North direction")
#     south_pins: str = Field(..., description="Comma-separated list of pins for South direction")
#     east_pins: str = Field(..., description="Comma-separated list of pins for East direction")
#     west_pins: str = Field(..., description="Comma-separated list of pins for West direction")
#     config_file: Optional[str] = Field(None, description="Output TCL config file path (optional)")
#     src_dir: str = Field("src", description="Directory to place the SDC file")
#     die_area: Optional[str] = Field(None, description="Die area in format 'xmin ymin xmax ymax', e.g. '0 0 600 600'")

# # Define the target API endpoint
# TARGET_API_URL = "http://0.0.0.0:9000/config_file_generation/"

# @mock_routes.post("/mock_openroad/")
# async def mock_openroad_request(payload: OpenROADRequest) -> Dict[str, Any]:
#     """
#     Mock API to parse OpenROADRequest and forward it to another API endpoint.
    
#     Args:
#         payload (OpenROADRequest): Request body containing OpenROAD configuration details.
        
#     Returns:
#         dict: Response from the target API.
#     """
#     try:
#         # Log the received payload
#         logger.info(f"Received OpenROAD request payload: {payload}")
        
#         # Process pin strings correctly - split only if not empty
#         north_pins_list = [pin.strip() for pin in payload.north_pins.split(",") if pin.strip()] if payload.north_pins else []
#         south_pins_list = [pin.strip() for pin in payload.south_pins.split(",") if pin.strip()] if payload.south_pins else []
#         east_pins_list = [pin.strip() for pin in payload.east_pins.split(",") if pin.strip()] if payload.east_pins else []
#         west_pins_list = [pin.strip() for pin in payload.west_pins.split(",") if pin.strip()] if payload.west_pins else []
        
#         # Prepare the payload for the target API
#         target_payload = {
#             "File_url": payload.File_url,
#             "design_name": payload.design_name,
#             "clock_period": payload.clock_period,
#             "clock_port": payload.clock_port,
#             "pins": {
#                 "north": north_pins_list,
#                 "south": south_pins_list,
#                 "east": east_pins_list,
#                 "west": west_pins_list,
#             },
#             "config_file": payload.config_file,
#             "src_dir": payload.src_dir,
#             "die_area": payload.die_area,
#         }
        
#         logger.info(f"Forwarding request to target API: {TARGET_API_URL}")
#         logger.info(f"Target payload: {target_payload}")
        
#         # Send the payload to the target API
#         async with httpx.AsyncClient(timeout=30.0) as client:
#             response = await client.post(
#                 TARGET_API_URL,
#                 json=target_payload,
#                 headers={
#                     "Content-Type": "application/json",
#                     "Accept": "application/json",
#                 },
#             )
        
#         # Check the response status
#         response.raise_for_status()  # This will raise an exception for 4XX/5XX responses
        
#         # Log the response from the target API
#         logger.info(f"Response from target API: {response.json()}")
        
#         # Return the response from the target API
#         return {
#             "message": "Data forwarded to target API successfully",
#             "target_api_response": response.json(),
#         }
    
#     except httpx.HTTPStatusError as e:
#         logger.error(f"HTTP error from target API: {e.response.status_code} - {e.response.text}")
#         raise HTTPException(
#             status_code=e.response.status_code,
#             detail=f"Target API returned error: {e.response.text}"
#         )
    
#     except httpx.RequestError as e:
#         logger.error(f"Failed to connect to target API: {str(e)}")
#         raise HTTPException(
#             status_code=503,  # Service Unavailable
#             detail=f"Failed to connect to target API: {str(e)}"
#         )
    
#     except Exception as e:
#         logger.error(f"Error processing OpenROAD request: {str(e)}")
#         raise HTTPException(
#             status_code=500,
#             detail=f"Error processing OpenROAD request: {str(e)}"
#         )

# # Include the router in the app
# app.include_router(mock_routes)

# # Add a basic root endpoint
# @app.get("/")
# async def root():
#     return {
#         "message": "OpenROAD Mock API",
#         "usage": "POST to /mock_openroad/ endpoint with required parameters",
#         "docs": "/docs for OpenAPI documentation"
#     }

# # To run the server directly from this file
# if __name__ == "__main__":
#     uvicorn.run("mock_api:app", host="0.0.0.0", port=9100, reload=True)