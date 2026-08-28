import time

from config.logging_config import logger
from config.settings import STARTUP_DELAY
from services.state import app_state
from database.init_db import initialize_database


def initialize_application():
    """
    Initializes the application.
    """

    initialize_database()

    logger.info("Initializing application...")

    if STARTUP_DELAY > 0:
        logger.info(
            "Simulating startup delay of %s seconds...",
            STARTUP_DELAY
        )
        time.sleep(STARTUP_DELAY)

    app_state.app_ready = True

    logger.info("Application initialized successfully.")