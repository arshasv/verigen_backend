import asyncio
import json
import logging
import aio_pika

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class AsyncRabbitMQManager:
    def __init__(self, host="localhost", queue_name="verilog_processing"):
        self.host = host
        self.queue_name = queue_name
        self.connection = None
        self.channel = None
        self.queue = None
        self.message_queue = asyncio.Queue()

    async def connect(self):
        """Establish connection to RabbitMQ"""
        try:
            self.connection = await aio_pika.connect_robust(
                f"amqp://{self.host}",
                timeout=30
            )
            self.channel = await self.connection.channel()
            self.queue = await self.channel.declare_queue(
                self.queue_name,
                durable=True
            )
            logger.info("Connected to RabbitMQ successfully")
        except Exception as e:
            logger.error(f"Failed to connect to RabbitMQ: {e}")
            raise

    async def setup_consumer(self, file_id: str):
        """Setup message consumer for specific file_id"""
        if not self.connection or self.connection.is_closed:
            await self.connect()
        
        async def process_message(message: aio_pika.IncomingMessage):
            async with message.process():
                try:
                    msg_body = json.loads(message.body.decode())
                    logger.info(f"Received message: {msg_body}")
                    
                    # Check if message is for our file_id
                    message_file_id = msg_body.get("file") or msg_body.get("file_id")
                    if message_file_id == file_id:
                        await self.message_queue.put(msg_body)
                        return True
                except json.JSONDecodeError:
                    logger.error("Failed to decode message")
                except Exception as e:
                    logger.error(f"Error processing message: {e}")
                return False
        
        await self.queue.consume(process_message)
        logger.info(f"Started consuming messages for file_id: {file_id}")

    async def get_notification(self, timeout: int = 60):
        """Wait for notification with timeout"""
        try:
            return await asyncio.wait_for(self.message_queue.get(), timeout=timeout)
        except asyncio.TimeoutError:
            logger.error("Timeout waiting for notification")
            raise

    async def cleanup(self):
        """Cleanup resources"""
        if self.connection and not self.connection.is_closed:
            await self.connection.close()
            logger.info("Closed RabbitMQ connection")