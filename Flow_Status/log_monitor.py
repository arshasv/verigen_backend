# import time
# from watchdog.observers import Observer
# from watchdog.events import FileSystemEventHandler

# # List of target filenames to monitor
# TARGET_FILES = {
#     "yosys-synthesis.log",
#     "openroad-floorplan.log",
#     "openroad-globalplacement.log",
#     "openroad-detailedplacement",
#     "openroad-cts.log",
#     "openroad-globalrouting.log",
#     "openroad-detailedrouting.log",
# }

# class FileCreationHandler(FileSystemEventHandler):
#     def on_created(self, event):
#         # Check if the created file is in the target list
#         if not event.is_directory:
#             filename = event.src_path.split("/")[-1]
#             if filename in TARGET_FILES:
#                 print(f"File created: {filename}")

# def monitor_directory(path_to_watch):
#     event_handler = FileCreationHandler()
#     observer = Observer()
#     # Set recursive=True to monitor subfolders
#     observer.schedule(event_handler, path=path_to_watch, recursive=True)
#     observer.start()
#     print(f"Monitoring directory and subfolders: {path_to_watch}")
#     try:
#         while True:
#             time.sleep(1)
#     except KeyboardInterrupt:
#         observer.stop()
#     observer.join()

# if __name__ == "__main__":
#     # Replace with the directory you want to monitor
#     directory_to_watch = r"/home/opentrends/openlane2/designs"
#     monitor_directory(directory_to_watch)





## log_monitor.py with FCM integration


import time
import asyncio
import aio_pika
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

# RabbitMQ configuration
RABBITMQ_HOST = "localhost"
RABBITMQ_PORT = 5672
RABBITMQ_USER = "user"
RABBITMQ_PASSWORD = "password"
RABBITMQ_QUEUE = "file_creation_queue"  # Define a queue for file creation events

# List of target filenames to monitor
TARGET_FILES = {
    "yosys-synthesis.log",
    "openroad-floorplan.log",
    "openroad-globalplacement.log",
    "openroad-detailedplacement",
    "openroad-cts.log",
    "openroad-globalrouting.log",
    "openroad-detailedrouting.log",
}

class FileCreationHandler(FileSystemEventHandler):
    def __init__(self, rabbitmq_connection):
        self.rabbitmq_connection = rabbitmq_connection

    def on_created(self, event):
        # Check if the created file is in the target list
        if not event.is_directory:
            filename = event.src_path.split("/")[-1]
            if filename in TARGET_FILES:
                print(f"File created: {filename}")
                asyncio.run(self.publish_to_rabbitmq(filename))

    async def publish_to_rabbitmq(self, filename):
        """
        Publish a message to RabbitMQ when a target file is created.
        """
        try:
            channel = await self.rabbitmq_connection.channel()
            message_body = {
                "filename": filename,
                "event": "file_created"
            }
            await channel.default_exchange.publish(
                aio_pika.Message(body=json.dumps(message_body).encode()),
                routing_key=RABBITMQ_QUEUE,
            )
            print(f"Published message to RabbitMQ: {message_body}")
        except Exception as e:
            print(f"Failed to publish message to RabbitMQ: {e}")

async def connect_to_rabbitmq():
    """
    Establish a connection to RabbitMQ.
    """
    try:
        connection_string = f"amqp://{RABBITMQ_USER}:{RABBITMQ_PASSWORD}@{RABBITMQ_HOST}:{RABBITMQ_PORT}/"
        return await aio_pika.connect_robust(connection_string)
    except Exception as e:
        print(f"Failed to connect to RabbitMQ: {e}")
        raise

def monitor_directory(path_to_watch, rabbitmq_connection):
    event_handler = FileCreationHandler(rabbitmq_connection)
    observer = Observer()
    # Set recursive=True to monitor subfolders
    observer.schedule(event_handler, path=path_to_watch, recursive=True)
    observer.start()
    print(f"Monitoring directory and subfolders: {path_to_watch}")
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()

if __name__ == "__main__":
    # Replace with the directory you want to monitor
    directory_to_watch = r"/home/opentrends/openlane2/designs"
    rabbitmq_connection = asyncio.run(connect_to_rabbitmq())
    monitor_directory(directory_to_watch, rabbitmq_connection)
