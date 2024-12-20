require 'logger'

logger = Logger.new(STDOUT)  # Logs to the console
logger.level = Logger::INFO

logger.debug("This is a debug message")
logger.info("This is an info message")
logger.warn("This is a warning")
logger.error("This is an error message")
logger.fatal("This is a fatal error")
