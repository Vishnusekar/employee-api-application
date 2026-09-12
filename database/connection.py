import os
from sqlalchemy import create_engine


def get_database_url():
    return (
        f"postgresql+psycopg://"
        f"{os.getenv('DATABASE_USERNAME')}:"
        f"{os.getenv('DATABASE_PASSWORD')}@"
        f"{os.getenv('DATABASE_HOST')}:"
        f"{os.getenv('DATABASE_PORT')}/"
        f"{os.getenv('DATABASE_NAME')}"
    )


def get_engine():
    return create_engine(
        get_database_url(),
        echo=False,
        pool_pre_ping=True
    )