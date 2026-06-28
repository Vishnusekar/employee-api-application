from fastapi import FastAPI
from datetime import datetime
import os
import socket

app = FastAPI()

APP_NAME = os.getenv("APP_NAME", "Employee API")
ENV = os.getenv("ENVIRONMENT", "Development")

employees = [
    {"id": 1, "name": "Alice", "department": "IT"},
    {"id": 2, "name": "Bob", "department": "Finance"},
]

@app.get("/")
def root():
    return {
        "application": APP_NAME,
        "environment": ENV,
        "hostname": socket.gethostname(),
        "timestamp": datetime.now(),
    }

@app.get("/employees")
def get_employees():
    return employees

@app.get("/health")
def health():
    return {
        "status": "UP"
    }
