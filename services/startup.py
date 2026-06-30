import time

from config.logging_config import logger
from config.settings import STARTUP_DELAY
from services.state import app_state


def initialize_application():
    """
    Simulates application startup.
    """

    logger.info("Initializing application...")

    if STARTUP_DELAY > 0:
        logger.info(
            "Simulating startup delay of %s seconds...",
            STARTUP_DELAY
        )
        time.sleep(STARTUP_DELAY)

    app_state.app_ready = True

    logger.info("Application initialized successfully.")