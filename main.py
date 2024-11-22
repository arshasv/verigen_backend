from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routes.rout import router

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

