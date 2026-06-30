import os

APP_NAME = os.getenv("APP_NAME", "Employee API")

ENVIRONMENT = os.getenv("ENVIRONMENT", "Development")

STARTUP_DELAY = int(os.getenv("STARTUP_DELAY", "0"))

FAIL_AFTER = int(os.getenv("FAIL_AFTER", "0"))