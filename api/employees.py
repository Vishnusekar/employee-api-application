from fastapi import APIRouter, HTTPException

from config.logging_config import logger
from config.settings import ENVIRONMENT
from data.employees import employees
from database.crud import get_all_employees
import socket

router = APIRouter()

@router.get("/employees")
def get_employees():

    logger.info(
        "Employee list requested | hostname=%s | environment=%s",
        socket.gethostname(),
        ENVIRONMENT,
    )

    try:
        employees = get_all_employees()
    except Exception:
        logger.exception("Failed to retrieve employees")
        raise HTTPException(
            status_code=500,
            detail="Unable to retrieve employees",
        )
    return [
    {
        "id": employee.id,
        "name": employee.name,
        "department": employee.department
    }
    for employee in employees
]