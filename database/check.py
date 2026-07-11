from sqlalchemy import text
from app.database.connection import engine

def check_database_connection():
    with engine.connect() as connection:
        connection.execute(text("SELECT 1"))
        return True