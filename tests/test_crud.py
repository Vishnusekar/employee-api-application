from database.crud import get_all_employees
from database.models import Employee


def test_get_all_employees_returns_employees(monkeypatch):
    fake_employees = [
        Employee(id=1, name="Alice", department="Engineering"),
        Employee(id=2, name="Bob", department="HR"),
    ]

    class FakeResult:
        def all(self):
            return fake_employees

    class FakeSession:
        def scalars(self, query):
            return FakeResult()

        def __enter__(self):
            return self

        def __exit__(self, exc_type, exc_value, traceback):
            pass

    monkeypatch.setattr(
        "database.crud.get_session",
        lambda: FakeSession()
    )

    result = get_all_employees()

    assert result == fake_employees

def test_get_all_employees_when_empty(monkeypatch):
    class FakeResult:
        def all(self):
            return []

    class FakeSession:
        def scalars(self, query):
            return FakeResult()

        def __enter__(self):
            return self

        def __exit__(self, exc_type, exc_value, traceback):
            pass

    monkeypatch.setattr(
        "database.crud.get_session",
        lambda: FakeSession()
    )

    result = get_all_employees()

    assert result == []