def user_details(user) -> dict:
    return {
        "id": str(user["_id"]),
        "name": user["name"],
        "email": user["email"],
        "security_question": user["security_question"],
        "password":user["password"]
    }

def users_list(users) -> list :
    return[user_details(user)for user in users]
