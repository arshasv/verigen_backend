from typing import BinaryIO
from azure.storage.blob import BlobServiceClient
import os
from dotenv import load_dotenv
from responses.response_json import response_json
from responses.response_stream import response_stream

# Load environment variables - make sure this runs before accessing env vars
load_dotenv()

# Get connection string with basic validation
connection_string = os.getenv('AZURE_STORAGE_CONNECTION_STRING')
if not connection_string:
    raise ValueError("Azure Storage Connection String not found. Please check your .env file.")

if "DefaultEndpointsProtocol" not in connection_string or "AccountName" not in connection_string:
    raise ValueError("Invalid connection string format. Please check your connection string in .env file.")

# Initialize blob service client
blob_service_client = BlobServiceClient.from_connection_string(connection_string)

# Rest of your existing code remains unchanged
def upload_blob(filename: str, container: str, data: BinaryIO):
    try:
        blob_client = blob_service_client.get_blob_client(
            container=container, blob=filename)
        
        blob_client.upload_blob(data)
        return response_json(message="success")
    except Exception as e:
        return response_json(message=str(e), status=500)

def get_blob(filename: str, container: str):
    try:
        blob_client = blob_service_client.get_blob_client(
            container=container, blob=filename)
        return response_stream(data=blob_client.download_blob().chunks(), download=False)
    except Exception as e:
        return response_json(message=str(e), status=500)

def download_blob(filename: str, container: str):
    try:
        blob_client = blob_service_client.get_blob_client(
            container=container, blob=filename)
        return response_stream(data=blob_client.download_blob().chunks(), download=True)
    except Exception as e:
        return response_json(message=str(e), status=500)

def delete_blob(filename: str, container: str):
    try:
        blob_client = blob_service_client.get_blob_client(
            container=container, blob=filename)
        
        blob_client.delete_blob()
        return response_json(message="success")
    except Exception as e:
        return response_json(message=str(e), status=500)