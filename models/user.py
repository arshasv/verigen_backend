from pydantic import BaseModel,EmailStr

class User(BaseModel):
    name: str
    email : EmailStr
    security_question : str
    answer : str
    password : str

class UserLogin(BaseModel):
    email: EmailStr
    password: str

class Token(BaseModel):
    access_token: str
    token_type: str

class TokenData(BaseModel):
    email: str | None = None

class SecurityQuestionRequest(BaseModel):
    email: EmailStr
    name: str

class ResetPasswordRequest(BaseModel):
    email: EmailStr
    name: str
    answer: str
    new_password: str

