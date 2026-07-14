from sqlalchemy import select
from database.models import Employee
from database.session import SessionLocal

def get_all_employees():
    with SessionLocal() as session:
        result = session.scalars(
            select(Employee)
        )
        return result.all()