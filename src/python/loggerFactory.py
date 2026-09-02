
import os
import logging

def getLogger(logPath):
    loggerName = f"translator_logger.{os.path.abspath(logPath)}"
    logger = logging.getLogger(loggerName)
    logger.setLevel(logging.DEBUG)
    logger.propagate = False

    # Recreating a logger for the same path should not duplicate handlers.
    for handler in list(logger.handlers):
        handler.close()
        logger.removeHandler(handler)

    if os.path.exists(logPath):
        os.remove(logPath)

    # Create file handler which logs even debug messages
    fh = logging.FileHandler(logPath)
    fh.setLevel(logging.DEBUG)

    # Create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)

    # Create formatter and add it to the handlers
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)

    # Add the handlers to the logger
    logger.addHandler(fh)
    logger.addHandler(ch)

    return logger
