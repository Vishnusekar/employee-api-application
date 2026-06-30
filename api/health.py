from fastapi import APIRouter, Response

from services.state import app_state

router = APIRouter()


@router.get("/health/live")
def liveness(response: Response):

    if app_state.app_alive:
        return {"status": "alive"}

    response.status_code = 500

    return {"status": "dead"}


@router.get("/health/ready")
def readiness(response: Response):

    if app_state.app_ready:
        return {"status": "ready"}

    response.status_code = 503

    return {"status": "not ready"}