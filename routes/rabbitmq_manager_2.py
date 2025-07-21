#=====================code with push notification ========================

import os
import asyncio
import json
import logging
import aio_pika
from notification.firebase_utils import send_push_notification
from agentic_system.agent import process_openlane_logs  # Import the log processing function
from typing import Any

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Directory to save messages as text files
MESSAGE_SAVE_DIR = "mes"

# Ensure the directory exists
os.makedirs(MESSAGE_SAVE_DIR, exist_ok=True)

class AsyncRabbitMQManagerOpenlane:
    def __init__(self, host="localhost", port=5672, user="guest", password="guest", queue_name="verilog_queue"):
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
        try:
            logger.info(f"Connecting to RabbitMQ at {self.host}:{self.port} with user '{self.user}'...")
            connection_string = f"amqp://{self.user}:{self.password}@{self.host}:{self.port}/"
            self.connection = await aio_pika.connect_robust(connection_string, timeout=3000)
            self.channel = await self.connection.channel()
            await self.channel.set_qos(prefetch_count=1)
            self.queue = await self.channel.declare_queue(self.queue_name, durable=True)
            logger.info(f"Connected to RabbitMQ queue: {self.queue_name}")
        except Exception as e:
            logger.error(f"Failed to connect to RabbitMQ: {e}")
            raise

    async def setup_consumer(self, fcm_token: str):
        async def on_message(message: aio_pika.IncomingMessage):
            async with message.process():
                try:
                    msg_body = json.loads(message.body.decode('utf-8'))
                    logger.info(f"Received message: {msg_body}")

                    # Put the message in the message_queue for retrieval
                    await self.message_queue.put(msg_body)

                    file_name = msg_body.get("filename")
                    logger.info(f"File name from message: {file_name}")
                    blob_url = msg_body.get("blob_url")

                    notification_title = "OpenLane Notification"

                    if not blob_url:
                        logger.warning("No 'blob_url' found in the message.")
                        notification_body = f"File created: {file_name}" if file_name else "OpenLane job completed (no logs available)."
                    else:
                        logger.info(f"Processing logs from blob URL: {blob_url}")
                        log_summary = await process_openlane_logs(blob_url) \
                            if asyncio.iscoroutinefunction(process_openlane_logs) \
                            else process_openlane_logs(blob_url)

                        logger.info(f"Log processing complete. Summary: {log_summary}")
                        notification_body = f"File: {file_name}\nLog Summary: {log_summary}\nBlob URL: {blob_url}" \
                            if file_name else f"Log Summary: {log_summary}\nBlob URL: {blob_url}"

                    try:
                        send_push_notification(
                            token=fcm_token,
                            title=notification_title,
                            body=notification_body
                        )
                        logger.info("Push notification sent successfully.")
                    except Exception as e:
                        logger.error(f"Failed to send push notification: {e}")
                except Exception as e:
                    logger.error(f"Error processing message: {e}")

        self.consumer_tag = await self.queue.consume(on_message)
        logger.info("Consumer setup complete.")

    async def get_notification(self, timeout=300):
        """
        Wait for a message from the message_queue for up to `timeout` seconds.
        """
        try:
            notification = await asyncio.wait_for(self.message_queue.get(), timeout=timeout)
            return notification
        except asyncio.TimeoutError:
            logger.warning("Timeout waiting for notification from RabbitMQ.")
            raise

    async def cleanup(self):
        try:
            if self.consumer_tag:
                await self.queue.cancel(self.consumer_tag)
            if self.connection:
                await self.connection.close()
            logger.info("RabbitMQ connection closed.")
        except Exception as e:
            logger.error(f"Error during RabbitMQ cleanup: {e}")

