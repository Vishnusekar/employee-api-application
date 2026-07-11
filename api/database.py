from fastapi import APIRouter
from app.database.check import check_database_connection

router = APIRouter()

@router.get("/database")
def database_status():
    return {
        "connected": check_database_connection()
    }