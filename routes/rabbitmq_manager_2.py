import asyncio
import json
import logging
import aio_pika
from notification.firebase_utils import initialize_firebase, send_push_notification

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Initialize Firebase Admin SDK
initialize_firebase()





class AsyncRabbitMQManagerOpenlane:
    def __init__(self, host="localhost1", queue_name="Openlane_processing"):
        """
        Initialize the RabbitMQ manager.

        Args:
            host (str): The RabbitMQ server host (default: "localhost").
            queue_name (str): The name of the queue to consume messages from.
        """
        self.host = host
        self.queue_name = queue_name
        self.connection = None
        self.channel = None
        self.queue = None
        self.message_queue = asyncio.Queue()



    async def connect(self):
        """
        Establish a connection to RabbitMQ and declare the queue.
        """
        try:
            logger.info(f"Connecting to RabbitMQ at {self.host}...")
            self.connection = await aio_pika.connect_robust(
                f"amqp://{self.host}", timeout=30
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
                    # Decode the message body
                    msg_body = json.loads(message.body.decode())
                    logger.info(f"Received message: {msg_body}")

                    # Add the message to the internal queue
                    await self.message_queue.put(msg_body)

                    # Send push notification via Firebase
                    notification_title = "Verilog Processing Update"
                    notification_body = (
                        f"Status - {msg_body['status']}, Log - {msg_body['log']}" 
                        if 'log' in msg_body 
                        else f"Status - {msg_body['status']}"
                    )
                    try:
                        send_push_notification(fcm_token, notification_title, notification_body)
                        logger.info("Push notification sent successfully.")
                    except Exception as e:
                        logger.error(f"Failed to send push notification: {e}")

                except json.JSONDecodeError:
                    logger.error("Failed to decode message body.")
                except Exception as e:
                    logger.error(f"Error processing message: {e}")



#------------------------- Start consuming messages from the queue -------------------------


        await self.queue.consume(process_message)
        logger.info("Started consuming messages.")

    async def get_notification(self, timeout: int = 60):
        """
        Wait for a notification from the RabbitMQ queue with a timeout.

        Args:
            timeout (int): The maximum time to wait for a message (in seconds).

        Returns:
            dict: The received message body.

        Raises:
            asyncio.TimeoutError: If no message is received within the timeout.
        """
        try:
            logger.info("Waiting for notification from RabbitMQ...")
            return await asyncio.wait_for(self.message_queue.get(), timeout=timeout)
        except asyncio.TimeoutError:
            logger.error("Timeout waiting for notification.")
            raise

    async def cleanup(self):
        """
        Clean up resources (close the connection).
        """
        if self.connection and not self.connection.is_closed:
            await self.connection.close()
            logger.info("Closed RabbitMQ connection.")