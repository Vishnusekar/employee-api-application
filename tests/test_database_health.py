from sqlalchemy.exc import SQLAlchemyError

from database.health import check_database_connection


def test_database_connection_is_healthy(monkeypatch):
    class FakeConnection:
        def execute(self, query):
            return None

        def __enter__(self):
            return self

        def __exit__(self, exc_type, exc_value, traceback):
            pass

    class FakeEngine:
        def connect(self):
            return FakeConnection()

    monkeypatch.setattr(
        "database.health.get_engine",
        lambda: FakeEngine()
    )

    assert check_database_connection() is True


def test_database_connection_is_unhealthy(monkeypatch):
    class FakeEngine:
        def connect(self):
            raise SQLAlchemyError("Database unavailable")

    monkeypatch.setattr(
        "database.health.get_engine",
        lambda: FakeEngine()
    )

    assert check_database_connection() is False