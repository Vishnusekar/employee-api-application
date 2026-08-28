from fastapi.testclient import TestClient

from app import app


client = TestClient(app)


def test_get_employees(monkeypatch):
    from database.models import Employee

    fake_employees = [
        Employee(id=1, name="Alice", department="Engineering"),
        Employee(id=2, name="Bob", department="HR"),
    ]

    monkeypatch.setattr(
        "api.employees.get_all_employees",
        lambda: fake_employees
    )

    response = client.get("/employees")

    assert response.status_code == 200

    data = response.json()

    assert data == [
        {
            "id": 1,
            "name": "Alice",
            "department": "Engineering",
        },
        {
            "id": 2,
            "name": "Bob",
            "department": "HR",
        },
    ]


def test_get_employees_when_empty(monkeypatch):
    monkeypatch.setattr(
        "api.employees.get_all_employees",
        lambda: []
    )

    response = client.get("/employees")

    assert response.status_code == 200
    assert response.json() == []