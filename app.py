from fastapi import FastAPI

from api.root import router as root_router
from api.health import router as health_router
from api.employees import router as employee_router

from services.startup import initialize_application
from services.failure import start_failure_simulation

app = FastAPI()

initialize_application(app)
start_failure_simulation(app)

app.include_router(root_router)
app.include_router(employee_router)
app.include_router(health_router)