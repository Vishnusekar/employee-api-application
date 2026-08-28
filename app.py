from contextlib import asynccontextmanager

from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

from api.root import router as root_router
from api.health import router as health_router
from api.employees import router as employee_router
from api.database import router as database_router

from services.failure import start_failure_simulation
from services.startup import initialize_application


@asynccontextmanager
async def lifespan(app: FastAPI):
    initialize_application()
    start_failure_simulation()

    yield


app = FastAPI(lifespan=lifespan)

Instrumentator().instrument(app).expose(app)

app.include_router(root_router)
app.include_router(employee_router)
app.include_router(health_router)
app.include_router(database_router)