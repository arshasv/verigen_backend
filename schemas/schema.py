


def user_details(user) -> dict:
    return {
        "id": str(user["_id"]),
        "name": user["name"],
        "email": user["email"],
        "security_question": user["security_question"],
        "answer": user["answer"],
        "password": user["password"],
        "file_urls": [
            {
                "filename": file_url["filename"],
                "url": file_url["url"],
                "timestamp": file_url["timestamp"]
            } for file_url in user.get("file_urls", [])
        ]
    }