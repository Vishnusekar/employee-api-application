from datetime import datetime
import socket

from fastapi import APIRouter

from config.settings import APP_NAME, ENVIRONMENT

router = APIRouter()


@router.get("/")
def root():
    return {
        "application": APP_NAME,
        "environment": ENVIRONMENT,
        "hostname": socket.gethostname(),
        "timestamp": datetime.now(),
    }