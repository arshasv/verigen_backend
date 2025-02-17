import firebase_admin
from firebase_admin import credentials, messaging
import logging
import os
from dotenv import load_dotenv

load_dotenv()

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Path to your Firebase service account key file
FIREBASE_CREDENTIALS_PATH = os.getenv("FIREBASE_CREDENTIALS_PATH")

def initialize_firebase():
    """
    Initialize Firebase Admin SDK.
    """
    logger.info("Attempting to initialize Firebase Admin SDK...")
    if not firebase_admin._apps:
        try:
            logger.info(f"Using credentials file: {FIREBASE_CREDENTIALS_PATH}")
            cred = credentials.Certificate(FIREBASE_CREDENTIALS_PATH)
            firebase_admin.initialize_app(cred)
            logger.info("Firebase Admin SDK initialized successfully.")
        except FileNotFoundError:
            logger.error(f"Firebase credentials file not found at: {FIREBASE_CREDENTIALS_PATH}")
            raise
        except ValueError as ve:
            logger.error(f"Invalid Firebase credentials: {ve}")
            raise
        except Exception as e:
            logger.error(f"Unexpected error during Firebase initialization: {e}")
            raise
    else:
        logger.info("Firebase Admin SDK is already initialized.")

def send_push_notification(token: str, title: str, body: str):
    """
    Send a push notification to a specific device using FCM.

    Args:
        token (str): The FCM registration token of the target device.
        title (str): The title of the notification.
        body (str): The body of the notification.
    """
    try:
        logger.info(f"Sending push notification to token: {token}")
        message = messaging.Message(
            notification=messaging.Notification(
                title=title,
                body=body,
            ),
            token=token,
        )
        response = messaging.send(message)
        logger.info(f"Successfully sent message: {response}")
    except Exception as e:
        logger.error(f"Failed to send push notification: {e}")
        raise


    