import threading
import time

from config.logging_config import logger
from config.settings import FAIL_AFTER
from services.state import app_state


def simulate_failure():
    """
    Marks the application unhealthy after FAIL_AFTER seconds.
    """

    if FAIL_AFTER <= 0:
        return

    logger.info(
        "Failure simulation enabled. Application will fail after %s seconds.",
        FAIL_AFTER
    )

    time.sleep(FAIL_AFTER)

    app_state.app_alive = False

    logger.warning("Application has become unhealthy.")


def start_failure_simulation():
    """
    Starts the background failure simulation thread.
    """

    thread = threading.Thread(
        target=simulate_failure,
        daemon=True
    )

    thread.start()