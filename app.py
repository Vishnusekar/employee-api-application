from fastapi import FastAPI

from api.root import router as root_router
from api.health import router as health_router
from api.employees import router as employee_router

from services.failure import start_failure_simulation
from services.startup import initialize_application

app = FastAPI()

initialize_application()

start_failure_simulation()

app.include_router(root_router)
app.include_router(employee_router)
app.include_router(health_router)