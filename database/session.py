from sqlalchemy.orm import sessionmaker
from .connection import get_engine


def get_session():
    SessionLocal = sessionmaker(
        bind=get_engine(),
        autoflush=False,
        autocommit=False
    )

    return SessionLocal()