from database.connection import get_engine
from database.models import Base


def initialize_database():
    engine = get_engine()
    Base.metadata.create_all(bind=engine)