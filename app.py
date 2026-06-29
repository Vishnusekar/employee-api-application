from fastapi import FastAPI
from fastapi import Response
from datetime import datetime
import os
import socket
import logging
import time
import threading

app = FastAPI()
app.state.app_ready = False
app.state.app_alive = True

logger.info("Initializing application...")

STARTUP_DELAY = int(os.getenv("STARTUP_DELAY", "0"))

logger.info(f"Simulating startup delay of {STARTUP_DELAY} seconds...")

time.sleep(STARTUP_DELAY)

app.state.app_ready = True

logger.info("Application initialized.")

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(message)s"
)

logger = logging.getLogger("employee-api")

APP_NAME = os.getenv("APP_NAME", "Employee API")
ENVIRONMENT = os.getenv("ENVIRONMENT", "Development")

FAIL_AFTER = int(os.getenv("FAIL_AFTER", "60"))
#FAIL_AFTER=60

employees = [
    {"id": 1, "name": "Alice", "department": "IT"},
    {"id": 2, "name": "Bob", "department": "Finance"},
]

@app.get("/")
def root():
    return {
        "application": APP_NAME,
        "environment": ENVIRONMENT,
        "hostname": socket.gethostname(),
        "timestamp": datetime.now(),
    }

@app.get("/employees")
def get_employees():
    logger.info(
        "Employee list requested | hostname=%s | environment=%s",
        socket.gethostname(),
        ENVIRONMENT
    )
    return employees

@app.get("/health/live")
def liveness(response: Response):
    if app.state.app_alive:
        return {
            "status":"alive"
        }
    response.status_code = 500
    return {
        "status":"dead"
    }

@app.get("/health/ready")
def readiness(response: Response):
    if app.state.app_ready:
        return {"status": "ready"}
    response.status_code = 503
    return {
        "status": "not ready"
    }

def simulate_failure():
    if FAIL_AFTER == 0:
        return
    time.sleep(FAIL_AFTER)
    logger.info("Application has become unhealthy!")
    app.state.app_alive = False    
    
threading.Thread(
    target=simulate_failure,
    daemon=True
).start()