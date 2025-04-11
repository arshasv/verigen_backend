import asyncio
import json
import logging
import aio_pika
import ast
from notification.firebase_utils import initialize_firebase, send_push_notification
from typing import Optional
# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Initialize Firebase Admin SDK
initialize_firebase()


class AsyncRabbitMQManagerOpenlane:
    def __init__(self, host="localhost", port=5672, user="user", password="password", queue_name="verilog_queue"):
        """
        Initialize the RabbitMQ manager.

        Args:
            host (str): The RabbitMQ server host (default: "localhost").
            port (int): The RabbitMQ server port (default: 5672).
            user (str): RabbitMQ username.
            password (str): RabbitMQ password.
            queue_name (str): The name of the queue to consume messages from.
        """
        self.host = host
        self.port = port
        self.user = user
        self.password = password
        self.queue_name = queue_name
        self.connection = None
        self.channel = None
        self.queue = None
        self.message_queue = asyncio.Queue()
        self.consumer_tag = None


    async def connect(self):
        """
        Establish a connection to RabbitMQ and declare the queue.
        """
        try:
            logger.info(f"Connecting to RabbitMQ at {self.host}:{self.port}...")
            
            # Build connection string with credentials if provided
            connection_string = "amqp://"
            if self.user and self.password:
                connection_string += f"{self.user}:{self.password}@"
            connection_string += f"{self.host}:{self.port}/"
            
            self.connection = await aio_pika.connect_robust(
                connection_string, timeout=3000
            )
            self.channel = await self.connection.channel()
            self.queue = await self.channel.declare_queue(
                self.queue_name, durable=True
            )
            logger.info("Connected to RabbitMQ successfully.")
        except Exception as e:
            logger.error(f"Failed to connect to RabbitMQ: {e}")
            raise


    async def setup_consumer(self, fcm_token: str):
        """
        Set up a consumer to listen for all messages in the queue
        and send push notifications using the FCM token.

        Args:
            fcm_token (str): The FCM token for sending push notifications.
        """
        logger.info(f"Setting up consumer with fcm_token: {fcm_token}")
        if not self.connection or self.connection.is_closed:
            await self.connect()

async def process_message(message: aio_pika.IncomingMessage):
    """
    Process incoming RabbitMQ messages.

    Args:
        message (aio_pika.IncomingMessage): The incoming message.
    """
    async with message.process():
        try:
            logger.info(f"Raw message received: {message.body}")
            
            # Try to parse the message in a safer way
            try:
                # First try standard JSON parsing
                msg_body = json.loads(message.body.decode('utf-8'))
            except json.JSONDecodeError:
                # If that fails, try using ast.literal_eval for Python dict-like strings
                msg_body = ast.literal_eval(message.body.decode('utf-8'))
            
            logger.info(f"Received message: {msg_body}")

            # Extract the blob URL from the message
            blob_url = msg_body.get("blob_url")
            if not blob_url:
                logger.error("No 'blob_url' found in the message.")
                return

            # Activate the log summarization function
            logger.info(f"Starting log summarization for blob URL: {blob_url}")
            from agentic_system.agent import process_openlane_logs  # Import the function
            log_summary = process_openlane_logs(blob_url)
            logger.info(f"Log summarization completed. Summary: {log_summary}")

            # Send push notification via Firebase with the log summary
            notification_title = "Verilog Processing Update"
            notification_body = f"OpenLane flow - {msg_body.get('openlane_flow')} Summary: {log_summary}"
            
            try:
                send_push_notification(fcm_token, notification_title, notification_body)
                logger.info("Push notification sent successfully.")
            except Exception as e:
                logger.error(f"Failed to send push notification: {e}")
            
            # Stop consuming after receiving one message
            if self.consumer_tag and not self.channel.is_closed:
                await self.channel.basic_cancel(self.consumer_tag)
                logger.info("Stopped consuming messages after receiving one.")
        
        except Exception as e:
            logger.error(f"Error processing message: {e}")


        #------------------------- Start consuming messages from the queue -------------------------
        self.consumer_tag = await self.queue.consume(process_message)
        logger.info(f"Started consuming messages with tag: {self.consumer_tag}")

    async def get_notification(self, timeout: Optional[int] = None):
        """
        Wait for a notification from the RabbitMQ queue with a timeout.

        Args:
            timeout (Optional[int]): The maximum time to wait for a message (in seconds), 
                or None to wait indefinitely.

        Returns:
            dict: The received message body.

        Raises:
            asyncio.TimeoutError: If no message is received within the timeout.
        """
        try:
            logger.info("Waiting for notification from RabbitMQ...")
            message = await asyncio.wait_for(self.message_queue.get(), timeout=timeout)
            # Cleanup after getting the message
            await self.cleanup()
            return message
        except asyncio.TimeoutError:
            logger.error("Timeout waiting for notification.")
            raise

    async def cleanup(self):
        """
        Clean up resources (close the connection).
        """
        # Cancel consumer if it exists
        if self.consumer_tag and self.channel and not self.channel.is_closed:
            try:
                await self.channel.basic_cancel(self.consumer_tag)
                logger.info("Cancelled consumer.")
            except Exception as e:
                logger.error(f"Error cancelling consumer: {e}")
        
        # Close connection if it exists
        if self.connection and not self.connection.is_closed:
            try:
                await self.connection.close()
                logger.info("Closed RabbitMQ connection.")
            except Exception as e:
                logger.error(f"Error closing connection: {e}")