from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
from typing import Optional
import uvicorn
import os
import sys
from pathlib import Path
import requests
from urllib.parse import urlparse

# Import the functions from your original script
# Assuming config_template_generator.py is in the same directory
from config_template_generator import generate_openroad_files, download_design_file

app = FastAPI(
    title="OpenROAD Configuration Generator API",
    description="API for generating OpenROAD configuration files",
    version="1.0.0"
)

# Define the request model with all required parameters
class OpenROADRequest(BaseModel):
    file_url: str = Field(..., description="URL of the file to be processed")
    design_name: str = Field(..., description="Name of the design")
    clock_period: float = Field(..., description="Clock period in nanoseconds")
    clock_port: str = Field(..., description="Clock port name")
    north_pins: str = Field(..., description="Comma-separated list of pins for North direction")
    south_pins: str = Field(..., description="Comma-separated list of pins for South direction")
    east_pins: str = Field(..., description="Comma-separated list of pins for East direction")
    west_pins: str = Field(..., description="Comma-separated list of pins for West direction")
    die_area: Optional[str] = Field(None, description="Die area in format 'xmin ymin xmax ymax', e.g. '0 0 600 600'")
    output_base_dir: Optional[str] = Field("/home/opentrends/openlane2/designs", description="Base output directory")

# Define the response model
class OpenROADResponse(BaseModel):
    downloaded_file: str
    tcl_config_file: str
    sdc_file: str
    pin_order_file: str
    message: str

@app.post("/generate_config", response_model=OpenROADResponse)
async def generate_config(request: OpenROADRequest):
    """
    Generate OpenROAD configuration files based on provided parameters
    """
    try:
        # First download the design file
        downloaded_file = download_design_file(
            file_url=request.file_url,
            design_name=request.design_name,
            output_base_dir=request.output_base_dir
        )
        
        if not downloaded_file:
            raise HTTPException(status_code=500, detail="Failed to download design file")
        
        # Generate configuration files
        tcl_file, sdc_file, pin_order_file = generate_openroad_files(
            design_name=request.design_name,
            clock_period=request.clock_period,
            clock_port=request.clock_port,
            north_pins=request.north_pins,
            south_pins=request.south_pins,
            east_pins=request.east_pins,
            west_pins=request.west_pins,
            output_base_dir=request.output_base_dir,
            die_area=request.die_area
        )
        
        return OpenROADResponse(
            downloaded_file=downloaded_file,
            tcl_config_file=tcl_file,
            sdc_file=sdc_file,
            pin_order_file=pin_order_file,
            message="OpenROAD configuration files generated successfully"
        )
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error generating files: {str(e)}")

@app.get("/")
async def root():
    """
    Root endpoint with basic API information
    """
    return {
        "message": "OpenROAD Configuration Generator API",
        "usage": "POST to /generate_config endpoint with required parameters",
        "docs": "/docs for OpenAPI documentation"
    }

# To run the server directly from this file
if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=9000, reload=True)