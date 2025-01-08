from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routes.route import router
from routes.blob_route import blob_routes
from routes.middleware_route import middleware_routes
 # Change this line to match the correct name
import uvicorn


if __name__ == "__main__":
    uvicorn.run("main:app", port=8080) # Change 8001 to your desired port
# Create FastAPI application
app = FastAPI()

# CORS Configuration
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",  
        "http://localhost:3001",  
    ],
    allow_credentials=True,
    allow_methods=["*"],  
    allow_headers=["*"],  
)

app.include_router(router)
app.include_router(blob_routes, prefix="/storage/blob")
app.include_router(middleware_routes, prefix="/api")
