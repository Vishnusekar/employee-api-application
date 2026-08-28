from sqlalchemy import text
from sqlalchemy.exc import SQLAlchemyError
from database.connection import get_engine


def check_database_connection():
    try:
        with get_engine().connect() as connection:
            connection.execute(text("SELECT 1"))
        return True
    except SQLAlchemyError:
        return False