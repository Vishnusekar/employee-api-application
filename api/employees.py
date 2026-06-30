from fastapi import APIRouter

from config.logging_config import logger
from config.settings import ENVIRONMENT
from data.employees import employees
import socket

router = APIRouter()

@router.get("/employees")
def get_employees():

    logger.info(
        "Employee list requested | hostname=%s | environment=%s",
        socket.gethostname(),
        ENVIRONMENT,
    )

    return employees