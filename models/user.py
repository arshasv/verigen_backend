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
    

class ResetPasswordRequest(BaseModel):
    email: EmailStr
    answer: str
    new_password: str


class LoginRequest(BaseModel):
    email: EmailStr
    password: str




