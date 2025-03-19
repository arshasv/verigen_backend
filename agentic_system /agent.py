import os
from dotenv import load_dotenv
import google.generativeai as genai
from crewai import Agent, Task, Crew
from langchain_google_genai import ChatGoogleGenerativeAI

# Load environment variables
load_dotenv()

# Validate API keys
google_api_key = os.getenv("GOOGLE_API_KEY")
if not google_api_key:
    raise ValueError("GOOGLE_API_KEY is missing. Please set it in your .env file.")

# Configure Google Generative AI
genai.configure(api_key=google_api_key)

# Create a proper LangChain wrapper for Gemini
llm = ChatGoogleGenerativeAI(
    model="gemini-2.0-flash",
    google_api_key=google_api_key,
    temperature=0.7,
    convert_system_message_to_human=True
)

# Load the log content
log_file_path = "agentic_system /openlane.log"
try:
    with open(log_file_path, "r") as file:
        log_content = file.read()
except FileNotFoundError:
    print(f"Log file '{log_file_path}' not found. Using default log content.")
    log_content = "Default log content: No errors or warnings detected."



def analyze_log_and_generate_summary(log_content: str) -> str:
    # Creating a log parser agent
    log_parser_agent = Agent(
        role="Log Analysis Expert",
        goal="Analyze OpenLane log files and extract key information such as errors, warnings, and critical metrics.",
        backstory="You are an expert in digital ASIC design and EDA tools, skilled at analyzing OpenLane logs.",
        verbose=True,
        llm=llm  # Pass the LLM object directly, not a wrapper function
    )

    # Define Task to Parse OpenLane Log
    task1 = Task(
        description=f"Analyze the following OpenLane log content:\n\n{log_content}",
        expected_output="A structured JSON output summarizing execution status, errors, warnings, and critical metrics.",
        agent=log_parser_agent
    )

    # Creating a report writer agent
    report_writer_agent = Agent(
        role="Technical Report Writer",
        goal="Create a detailed summary report from the parsed OpenLane log data.",
        backstory="You are a skilled technical writer with expertise in digital design workflows.",
        verbose=True,
        llm=llm  # Pass the LLM object directly, not a wrapper function
    )

    # Define the report writing task
    task2 = Task(
        description="Generate a well-structured summary report from the extracted OpenLane log data in json format.",
        expected_output="A professional OpenLane log summary report in markdown format, including execution status, key errors, warnings, and critical metrics.",
        agent=report_writer_agent,
        context=[task1]  # Correctly pass the context as a list
    )

    # Create the Crew
    crew = Crew(
        agents=[log_parser_agent, report_writer_agent],
        tasks=[task1, task2],
        verbose=True  # Keep verbose True for debugging
    )

    # Execute the workflow
    try:
        result = crew.kickoff()
        print("Workflow completed successfully.")
        print(result)
        return result
    except Exception as e:
        print(f"An error occurred during workflow execution: {e}")
        return str(e)
    
analyze_log_and_generate_summary(log_content)