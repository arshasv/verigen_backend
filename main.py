from fastapi import FastAPI
from routes.rout import router

app = FastAPI()

app.include_router(router)