# employee-api-application
Simple Python application with REST API configured and containerized

Goal
Build and containerize a small application.

Technologies
•	Python (Flask or FastAPI) 
•	Docker 
•	Docker Compose 

Features
•	REST endpoints 
•	Health check 
•	Logging 
•	Environment variables 
•	Persistent volume 
•	Multi-stage Docker build 

Skills Learned
•	Dockerfiles 
•	Images vs Containers 
•	Volumes 
•	Networks 
•	Compose 

Steps

Step 1 - Create Project Structure
mkdir -p ~/workspace/projects
cd ~/workspace/projects

mkdir employee-api

cd employee-api

Verify:
pwd

Expected:
/home/<user>/workspace/projects/employee-api
________________________________________
Step 2 - Create Python Virtual Environment
python3 -m venv .venv
Activate
source .venv/bin/activate
Verify
(.venv)
appears in your prompt.
________________________________________
Step 3 - Install Packages
pip install fastapi uvicorn
Freeze dependencies
pip freeze > requirements.txt
________________________________________
Step 4 - Create Application
Create:
app.py
Paste:
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
________________________________________
Step 5 - Run Locally
uvicorn app:app --reload
Open
http://localhost:8000
Also test:
http://localhost:8000/health
http://localhost:8000/employees
Swagger UI
http://localhost:8000/docs
Spend a few minutes exploring the generated API documentation.
________________________________________
Step 6 - Git
Initialize repository
git init
Create
.gitignore
Contents
.venv
__pycache__
*.pyc
Commit
git add .

git commit -m "Initial FastAPI application"
________________________________________
Step 7 - Create Dockerfile
Create
Dockerfile
Contents
FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000"]
Before building, let's understand each instruction:
•	FROM: Base image. 
•	WORKDIR: Sets the working directory inside the container. 
•	COPY: Copies files from your project into the image. 
•	RUN: Executes commands during the image build (here, installs Python dependencies). 
•	EXPOSE: Documents that the container listens on port 8000. 
•	CMD: The default command when the container starts. 
________________________________________
Step 8 - Build Image
docker build -t employee-api:v1 .
Inspect
docker images
________________________________________
Step 9 - Run Container
docker run \
-d \
-p 8000:8000 \
--name employee-api \
employee-api:v1
Verify
docker ps
________________________________________
Step 10 - Inspect
Logs
docker logs employee-api
Enter container
docker exec -it employee-api bash
Inside
pwd

ls

python --version

cat requirements.txt
Exit
exit
________________________________________
Step 11 - Environment Variables
Delete container
docker stop employee-api

docker rm employee-api
Run again
docker run \
-d \
-p 8000:8000 \
-e APP_NAME="Enterprise Employee API" \
-e ENVIRONMENT=Development \
--name employee-api \
employee-api:v1
Visit
localhost:8000
Notice the values changed.
This demonstrates the Twelve-Factor App principle of externalizing configuration instead of hardcoding it.
________________________________________
Step 12 - Image Layers
Inspect
docker history employee-api:v1
Discuss:
•	Why layers matter. 
•	How Docker caches unchanged layers. 
•	Why we copied requirements.txt before the application source (to improve rebuild speed). 
________________________________________
Step 13 - Practice
Without looking at the Dockerfile:
•	Rebuild the image. 
•	Rename the container. 
•	Run on port 8080 instead of 8000. 
•	Pass different environment variables. 
•	Stop it. 
•	Remove it. 