from sqlalchemy import select
from database.models import Employee
from database.session import get_session


def get_all_employees():
    with get_session() as session:
        result = session.scalars(
            select(Employee)
        )
        return result.all()