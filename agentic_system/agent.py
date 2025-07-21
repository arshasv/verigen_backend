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



# import os
# import requests
# import zipfile
# from dotenv import load_dotenv
# import google.generativeai as genai
# from crewai import Agent, Task, Crew
# from langchain_google_genai import ChatGoogleGenerativeAI
# import json
# import time

# # Load environment variables
# load_dotenv()

# # API Key
# google_api_key = ""
# if not google_api_key:
#     raise ValueError("GOOGLE_API_KEY is missing. Please set it in your .env file.")

# # Configure Gemini
# genai.configure(api_key=google_api_key)
# llm = ChatGoogleGenerativeAI(
#     model="gemini-2.0-flash",
#     google_api_key=google_api_key,
#     temperature=0.7,
#     convert_system_message_to_human=True
# )

# def download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path):
#     response = requests.get(log_zip_url)
#     with open(log_zip_path, "wb") as file:
#         file.write(response.content)
#     os.makedirs(log_dir_path, exist_ok=True)
#     with zipfile.ZipFile(log_zip_path, 'r') as zip_ref:
#         zip_ref.extractall(log_dir_path)
#     print("Logs downloaded and extracted.")
    
#     openlane_log_files = [
#         "flow.log",
#         "yosys-synthesis.log", "verilator-lint.log",
#         "openroad-floorplan.log", "openroad-globalplacement.log", "openroad-detailedplacement.log",
#         "openroad-cts.log", "openroad-globalrouting.log", "openroad-detailedrouting.log",
#         "error.log", "warning.log"
#     ]

#     log_files = []
#     for root, _, files in os.walk(log_dir_path):
#         for file in openlane_log_files:
#             if file in files:
#                 log_files.append(os.path.join(root, file))
#     return log_files

# def extract_relevant_lines(content):
#     keywords = ['violation', 'slack', 'error', 'warning', 'utilization', 'congestion', 'density', 'area']
#     return "\n".join([line for line in content.splitlines() if any(k in line.lower() for k in keywords)])

# def save_outputs(result, output_dir="outputs"):
#     """Save results in multiple formats"""
#     # Create output directory if it doesn't exist
#     os.makedirs(output_dir, exist_ok=True)
    
#     # Save as JSON
#     json_path = os.path.join(output_dir, "openlane_log_summary.json")
#     with open(json_path, "w") as f:
#         json.dump(result, f, indent=4)
#     print(f"JSON output saved to {json_path}")
    
#     # Save as Markdown
#     md_path = os.path.join(output_dir, "openlane_log_summary.md")
#     with open(md_path, "w") as f:
#         # If result is already in markdown format, save directly
#         if isinstance(result, str) and "# " in result:
#             f.write(result)
#         # Otherwise format JSON as markdown
#         else:
#             f.write("# OpenLane Log Analysis Summary\n\n")
#             if isinstance(result, dict):
#                 for key, value in result.items():
#                     f.write(f"## {key.title()}\n\n")
#                     if isinstance(value, dict):
#                         for subkey, subvalue in value.items():
#                             f.write(f"### {subkey}\n\n")
#                             f.write(f"{subvalue}\n\n")
#                     else:
#                         f.write(f"{value}\n\n")
#             else:
#                 f.write(str(result))
#     print(f"Markdown output saved to {md_path}")
    
#     return json_path, md_path

# def analyze_logs(log_files):
#     log_parser = Agent(
#         role="OpenLane Log Insight Extractor",
#         goal="Filter relevant log lines and extract insights efficiently for configuration tuning.",
#         backstory="Expert in ASIC flow with experience in interpreting key design log patterns.",
#         verbose=True,
#         llm=llm
#     )

#     tasks = []
#     for log_file in log_files:
#         with open(log_file, "r") as file:
#             raw = file.read()
#         filtered = extract_relevant_lines(raw)
#         if not filtered.strip():
#             continue
#         task = Task(
#             description=f"Summarize this filtered content from {os.path.basename(log_file)}:\n\n{filtered[:8000]}",
#             expected_output="JSON with status, violations, key metrics, and suggestions.",
#             agent=log_parser
#         )
#         tasks.append(task)

#     reporter = Agent(
#         role="Final Report Generator",
#         goal="Create a design summary across all stages to finalize configuration parameters.",
#         backstory="An expert technical report writer for VLSI design toolchains.",
#         verbose=True,
#         llm=llm
#     )

#     final_task = Task(
#         description="Generate a well-structured summary report from the extracted OpenLane log data in markdown format",
#         expected_output="A professional OpenLane log summary report in markdown format, including execution status, key errors, warnings, and critical metrics.",
#         agent=reporter,
#         context=tasks
#     )

#     crew = Crew(agents=[log_parser, reporter], tasks=tasks + [final_task], verbose=True)

#     try:
#         result = crew.kickoff()
#         # Display the output in the console
#         print("\n\n===== FINAL ANALYSIS REPORT =====\n")
#         print(result)
#         print("\n===============================\n")
        
#         # Save outputs in multiple formats
#         save_outputs(result)
#         return result
#     except Exception as e:
#         error_msg = f"Error: {e}"
#         print(error_msg)
#         with open("error_output.json", "w") as f:
#             json.dump({"error": str(e)}, f, indent=4)
#         return {"error": str(e)}

# # Main block
# if __name__ == "__main__":
#     start = time.time()
#     log_zip_url = "https://generativeaidatadocs.blob.core.windows.net/outputs/design_20250327_042258.zip"
#     log_zip_path = "logfile.zip"
#     log_dir_path = "logfile"

#     logs = download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path)
#     result = analyze_logs(logs)
#     end = time.time()
#     print(f"Completed in {end - start:.2f} seconds.")



#------------------Debugged code------------------------

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
google_api_key = os.getenv("GOOGLE_API_KEY")
if not google_api_key:
    raise ValueError("GOOGLE_API_KEY is missing. Please set it in your .env file.")

# Configure Gemini
genai.configure(api_key=google_api_key)
llm = ChatGoogleGenerativeAI(
    model="gemini-2.0-flash-lite",
    google_api_key=google_api_key,
    convert_system_message_to_human=True
)

def download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path):
    """
    Download and extract log files from a zip URL.
    """
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

    log_files_dict = {}
    for root, _, files in os.walk(log_dir_path):
        for file in files:
            if file in openlane_log_files:
                full_path = os.path.join(root, file)
                log_files_dict[file] = full_path
    return log_files_dict

def extract_relevant_lines(content):
    """
    Extract relevant lines from log content based on keywords.
    """
    keywords = ['violation', 'slack', 'error', 'warning', 'utilization', 'congestion', 'density', 'area', 
                'cell', 'wire', 'die', 'core', 'HPWL', 'overflow', 'RC', 'timing', 'width', 'height', 
                'PIN', 'PORT', 'DESIGN', 'instance', 'net', 'buf', 'inv', 'tap', 'fill']
    return "\n".join([line for line in content.splitlines() if any(k in line.lower() for k in keywords)])

def save_outputs(result, output_dir="outputs"):
    """
    Save results in multiple formats (JSON and Markdown).
    """
    os.makedirs(output_dir, exist_ok=True)
    
    # Save as JSON
    json_path = os.path.join(output_dir, "openlane_log_summary.json")
    with open(json_path, "w") as f:
        json.dump(result, f, indent=4)
    print(f"JSON output saved to {json_path}")
    
    # Save as Markdown
    md_path = os.path.join(output_dir, "openlane_log_summary.md")
    with open(md_path, "w") as f:
        f.write("# OpenLane Log Analysis Summary\n\n")
        for log_name, content in result.items():
            f.write(f"## {log_name}\n\n")
            f.write(f"{content}\n\n")
            
    print(f"Markdown output saved to {md_path}")
    
    return json_path, md_path

def analyze_logs(log_files_dict, max_summary_length=500):
    """
    Analyze multiple log files and generate brief summaries for each.
    
    Args:
        log_files_dict (dict): Dictionary mapping log file names to their paths
        max_summary_length (int): Maximum length of each log summary in characters
    
    Returns:
        dict: Dictionary containing brief summaries for each log file
    """
    log_analyzer = Agent(
        role="OpenLane Log Expert",
        goal="Extract only the most critical insights from OpenLane logs for quick review.",
        backstory="""Expert in ASIC design flow with deep knowledge of OpenLane toolchain and log interpretation. 
                    Specializes in identifying critical metrics, violations, errors, and optimization opportunities.""",
        verbose=True,
        llm=llm
    )
    
    log_analyses = {}
    
    for log_name, log_path in log_files_dict.items():
        try:
            with open(log_path, "r") as file:
                raw = file.read()
            filtered = extract_relevant_lines(raw)
            if not filtered.strip():
                log_analyses[log_name] = "No relevant data found in log"
                continue
                
            task = Task(
                description=f"""
                Generate an extremely concise summary (max 3-5 bullet points) of the most critical information from {log_name}.

                Focus ONLY on:
                - Critical errors that block design progress
                - Severe timing violations (worst slack)
                - Utilization/congestion issues that require attention
                - DRC/LVS violations that must be fixed
                
                Keep each bullet point to 1-2 short sentences. Be direct and specific.
                Avoid detailed explanations and background information.
                Omit non-critical warnings or expected messages.
                
                Here's the filtered log content:
                
                {filtered[:8000]}
                """,
                expected_output="A 3-5 bullet point summary listing ONLY the most critical issues that need attention.",
                agent=log_analyzer
            )
            
            result = task.execute()
            
            # Limit summary length
            result = result.strip()
            if len(result) > max_summary_length:
                result = result[:max_summary_length] + "..."
                
            log_analyses[log_name] = result
            
        except Exception as e:
            print(f"Error processing {log_name}: {e}")
            log_analyses[log_name] = f"Error processing log: {str(e)}"
    
    save_outputs(log_analyses)
    return log_analyses

def process_openlane_logs(log_zip_url, max_summary_length=500):
    """
    Process OpenLane logs from a given zip URL, analyze them, and return the results.

    Args:
        log_zip_url (str): The URL of the zip file containing OpenLane logs.
        max_summary_length (int): Maximum length of each log summary in characters

    Returns:
        dict: A dictionary containing the analysis results for each log file.
    """
    log_zip_path = "logfile.zip"
    log_dir_path = "logfile"

    try:
        logs = download_and_extract_logs(log_zip_url, log_zip_path, log_dir_path)
        result = analyze_logs(logs, max_summary_length)
        return result
    except Exception as e:
        print(f"Error processing OpenLane logs: {e}")
        return {"error": str(e)}

# Main block
if __name__ == "__main__":
    start = time.time()
    log_zip_url = "https://generativeaidatadocs.blob.core.windows.net/outputs/design_20250327_042258.zip"
    
    # Set the maximum length for each log summary (adjust as needed)
    max_summary_length = 500
    
    result = process_openlane_logs(log_zip_url, max_summary_length)
    end = time.time()
    print(f"Completed in {end - start:.2f} seconds.")