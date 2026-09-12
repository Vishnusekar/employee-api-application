import pytest

from fastapi.testclient import TestClient

from app import app
from services.state import app_state


client = TestClient(app)


@pytest.fixture(autouse=True)
def reset_app_state():
    app_state.app_ready = False
    app_state.app_alive = True


def test_liveness_endpoint():
    response = client.get("/health/live")

    assert response.status_code == 200

    data = response.json()

    assert data["status"] == "alive"


def test_liveness_endpoint_when_dead():
    app_state.app_alive = False

    response = client.get("/health/live")

    assert response.status_code == 500

    data = response.json()

    assert data["status"] == "dead"


def test_readiness_endpoint(monkeypatch):
    app_state.app_ready = True

    monkeypatch.setattr(
        "api.health.check_database_connection",
        lambda: True
    )

    response = client.get("/health/ready")

    assert response.status_code == 200

    data = response.json()

    assert data["status"] == "ready"


def test_readiness_endpoint_when_not_ready():
    app_state.app_ready = False

    response = client.get("/health/ready")

    assert response.status_code == 503

    data = response.json()

    assert data["status"] == "not ready"