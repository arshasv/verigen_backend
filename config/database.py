import os
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv()


client = MongoClient(os.getenv("MONGODB_URL"))

db = client.users_db

users_data = db["user_credentials"]