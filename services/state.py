class ApplicationState:
    """
    Stores the runtime state of the application.

    app_ready:
        Indicates whether the application is ready to receive traffic.

    app_alive:
        Indicates whether the application is healthy.
    """

    def __init__(self):
        self.app_ready = False
        self.app_alive = True


app_state = ApplicationState()