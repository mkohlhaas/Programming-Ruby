def some_calculation(i)
  # ...
  if i == 2
    99
  else
    0
  end
end
require "logger"

log = Logger.new($stdout, level: Logger::DEBUG)
log.info("Application starting")
3.times do |i|
  log.debug("Executing loop, i = #{i}")
  temperature = some_calculation(i)  # defined externally
  if temperature > 50
    log.warn("Possible overheat. i = #{i}")
  end
end

log.info("Application terminating")
