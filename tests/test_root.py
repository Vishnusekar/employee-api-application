from fastapi.testclient import TestClient

from app import app


client = TestClient(app)


def test_root_endpoint():
    response = client.get("/")

    assert response.status_code == 200

    data = response.json()

    assert "application" in data
    assert "environment" in data
    assert "hostname" in data
    assert "timestamp" in data