# import os
# from dotenv import load_dotenv
# import google.generativeai as genai
# from crewai import Agent, Task, Crew
# from langchain_google_genai import ChatGoogleGenerativeAI

# # Load environment variables
# load_dotenv()

# # Validate API keys
# google_api_key = os.getenv("GOOGLE_API_KEY")
# if not google_api_key:
#     raise ValueError("GOOGLE_API_KEY is missing. Please set it in your .env file.")

# # Configure Google Generative AI
# genai.configure(api_key=google_api_key)

# # Create a proper LangChain wrapper for Gemini
# llm = ChatGoogleGenerativeAI(
#     model="gemini-2.0-flash",
#     google_api_key=google_api_key,
#     temperature=0.7,
#     convert_system_message_to_human=True
# )

# # Load the log content
# log_file_path = "agentic_system /openlane.log"
# try:
#     with open(log_file_path, "r") as file:
#         log_content = file.read()
# except FileNotFoundError:
#     print(f"Log file '{log_file_path}' not found. Using default log content.")
#     log_content = "Default log content: No errors or warnings detected."



# def analyze_log_and_generate_summary(log_content: str) -> str:
#     # Creating a log parser agent
#     log_parser_agent = Agent(
#         role="Log Analysis Expert",
#         goal="Analyze OpenLane log files and extract key information such as errors, warnings, and critical metrics.",
#         backstory="You are an expert in digital ASIC design and EDA tools, skilled at analyzing OpenLane logs.",
#         verbose=True,
#         llm=llm  # Pass the LLM object directly, not a wrapper function
#     )

#     # Define Task to Parse OpenLane Log
#     task1 = Task(
#         description=f"Analyze the following OpenLane log content:\n\n{log_content}",
#         expected_output="A structured JSON output summarizing execution status, errors, warnings, and critical metrics.",
#         agent=log_parser_agent
#     )

#     # Creating a report writer agent
#     report_writer_agent = Agent(
#         role="Technical Report Writer",
#         goal="Create a detailed summary report from the parsed OpenLane log data.",
#         backstory="You are a skilled technical writer with expertise in digital design workflows.",
#         verbose=True,
#         llm=llm  # Pass the LLM object directly, not a wrapper function
#     )

#     # Define the report writing task
#     task2 = Task(
#         description="Generate a well-structured summary report from the extracted OpenLane log data in json format.",
#         expected_output="A professional OpenLane log summary report in markdown format, including execution status, key errors, warnings, and critical metrics.",
#         agent=report_writer_agent,
#         context=[task1]  # Correctly pass the context as a list
#     )

#     # Create the Crew
#     crew = Crew(
#         agents=[log_parser_agent, report_writer_agent],
#         tasks=[task1, task2],
#         verbose=True  # Keep verbose True for debugging
#     )

#     # Execute the workflow
#     try:
#         result = crew.kickoff()
#         print("Workflow completed successfully.")
#         print(result)
#         return result
#     except Exception as e:
#         print(f"An error occurred during workflow execution: {e}")
#         return str(e)
    
# analyze_log_and_generate_summary(log_content)








#---------------------runnig take 13 minutes-------------------



import os
import requests
import zipfile
from dotenv import load_dotenv
import google.generativeai as genai
from crewai import Agent, Task, Crew
from langchain_google_genai import ChatGoogleGenerativeAI
import json
import time

# Load environment variables
load_dotenv()

# API Key
google_api_key = "AIzaSyAbvRpgzO8g6h2AK5V7B37hdOxf73nmj4A"
if not google_api_key:
    raise ValueError("GOOGLE_API_KEY is missing. Please set it in your .env file.")

# Configure Gemini
genai.configure(api_key=google_api_key)
llm = ChatGoogleGenerativeAI(
    model="gemini-2.0-flash",
    google_api_key=google_api_key,
    temperature=0.7,
    convert_system_message_to_human=True
)

def download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path):
    response = requests.get(log_zip_url)
    with open(log_zip_path, "wb") as file:
        file.write(response.content)
    os.makedirs(log_dir_path, exist_ok=True)
    with zipfile.ZipFile(log_zip_path, 'r') as zip_ref:
        zip_ref.extractall(log_dir_path)
    print("Logs downloaded and extracted.")
    
    openlane_log_files = [
        "yosys-synthesis.log", "verilator-lint.log",
        "openroad-floorplan.log", "openroad-globalplacement.log", "openroad-detailedplacement.log",
        "openroad-cts.log", "openroad-globalrouting.log", "openroad-detailedrouting.log",
        "error.log", "warning.log"
    ]

    log_files = []
    for root, _, files in os.walk(log_dir_path):
        for file in openlane_log_files:
            if file in files:
                log_files.append(os.path.join(root, file))
    return log_files

def extract_relevant_lines(content):
    keywords = ['violation', 'slack', 'error', 'warning', 'utilization', 'congestion', 'density', 'area']
    return "\n".join([line for line in content.splitlines() if any(k in line.lower() for k in keywords)])

def save_outputs(result, output_dir="outputs"):
    """Save results in multiple formats"""
    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Save as JSON
    json_path = os.path.join(output_dir, "openlane_log_summary.json")
    with open(json_path, "w") as f:
        json.dump(result, f, indent=4)
    print(f"JSON output saved to {json_path}")
    
    # Save as Markdown
    md_path = os.path.join(output_dir, "openlane_log_summary.md")
    with open(md_path, "w") as f:
        # If result is already in markdown format, save directly
        if isinstance(result, str) and "# " in result:
            f.write(result)
        # Otherwise format JSON as markdown
        else:
            f.write("# OpenLane Log Analysis Summary\n\n")
            if isinstance(result, dict):
                for key, value in result.items():
                    f.write(f"## {key.title()}\n\n")
                    if isinstance(value, dict):
                        for subkey, subvalue in value.items():
                            f.write(f"### {subkey}\n\n")
                            f.write(f"{subvalue}\n\n")
                    else:
                        f.write(f"{value}\n\n")
            else:
                f.write(str(result))
    print(f"Markdown output saved to {md_path}")
    
    return json_path, md_path

def analyze_logs(log_files):
    log_parser = Agent(
        role="OpenLane Log Insight Extractor",
        goal="Filter relevant log lines and extract insights efficiently for configuration tuning.",
        backstory="Expert in ASIC flow with experience in interpreting key design log patterns.",
        verbose=True,
        llm=llm
    )

    tasks = []
    for log_file in log_files:
        with open(log_file, "r") as file:
            raw = file.read()
        filtered = extract_relevant_lines(raw)
        if not filtered.strip():
            continue
        task = Task(
            description=f"Summarize this filtered content from {os.path.basename(log_file)}:\n\n{filtered[:8000]}",
            expected_output="JSON with status, violations, key metrics, and suggestions.",
            agent=log_parser
        )
        tasks.append(task)

    reporter = Agent(
        role="Final Report Generator",
        goal="Create a design summary across all stages to finalize configuration parameters.",
        backstory="An expert technical report writer for VLSI design toolchains.",
        verbose=True,
        llm=llm
    )

    final_task = Task(
        description="Generate a well-structured summary report from the extracted OpenLane log data in markdown format",
        expected_output="A professional OpenLane log summary report in markdown format, including execution status, key errors, warnings, and critical metrics.",
        agent=reporter,
        context=tasks
    )

    crew = Crew(agents=[log_parser, reporter], tasks=tasks + [final_task], verbose=True)

    try:
        result = crew.kickoff()
        # Display the output in the console
        print("\n\n===== FINAL ANALYSIS REPORT =====\n")
        print(result)
        print("\n===============================\n")
        
        # Save outputs in multiple formats
        save_outputs(result)
        return result
    except Exception as e:
        error_msg = f"Error: {e}"
        print(error_msg)
        with open("error_output.json", "w") as f:
            json.dump({"error": str(e)}, f, indent=4)
        return {"error": str(e)}

# Main block
if __name__ == "__main__":
    start = time.time()
    log_zip_url = "https://generativeaidatadocs.blob.core.windows.net/outputs/design_20250327_042258.zip"
    log_zip_path = "logfile.zip"
    log_dir_path = "logfile"

    logs = download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path)
    result = analyze_logs(logs)
    end = time.time()
    print(f"Completed in {end - start:.2f} seconds.")
