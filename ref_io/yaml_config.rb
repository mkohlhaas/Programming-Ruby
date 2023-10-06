require "yaml"

config = YAML.load_file("#{__dir__}/config.yml")
puts config["username"]
puts config["prefs"]["timeout"] * 10
