def user_details(user) -> dict:
    """
    Convert a user document from MongoDB to a structured dictionary including file information.
    
    Args:
        user: A MongoDB user document
        
    Returns:
        dict: User details dictionary with file information
    """
    return {
        "id": str(user["_id"]),
        "username": user.get("username", ""),
        "email": user["email"],
        "first_name": user.get("first_name", ""),
        "last_name": user.get("last_name", ""),
        "is_active": user.get("is_active", True),
        "created_at": user.get("created_at", ""),
        "last_login": user.get("last_login", ""),
        # Security information excluded from regular responses for safety
        # Only include when specifically needed, like for password reset
        "files": [
            {
                "file_id": str(file_url.get("_id", "")),
                "filename": file_url["filename"],
                "original_filename": file_url.get("original_filename", file_url["filename"]),
                "url": file_url["url"],
                "file_size": file_url.get("file_size", 0),
                "file_type": file_url.get("file_type", ""),
                "upload_timestamp": file_url.get("timestamp", ""),
                "status": file_url.get("status", "unknown"),
                "processing_result": {
                    "status": file_url.get("processing_status", "pending"),
                    "completed_at": file_url.get("processing_completed_at", ""),
                    "summary": file_url.get("processing_summary", ""),
                    "error": file_url.get("processing_error", ""),
                } if "processing_status" in file_url else {},
                "is_archived": file_url.get("is_archived", False),
            }
            for file_url in user.get("file_urls", [])
        ],
    }

# Alternative version that excludes sensitive information for general use
def safe_user_details(user) -> dict:
    """
    Convert a user document to a dictionary excluding sensitive information.
    Use this function for general API responses.
    """
    user_dict = user_details(user)
    # Remove sensitive fields
    if "password" in user_dict:
        del user_dict["password"]
    if "security_question" in user_dict:
        del user_dict["security_question"]
    if "answer" in user_dict:
        del user_dict["answer"]
    
    return user_dict