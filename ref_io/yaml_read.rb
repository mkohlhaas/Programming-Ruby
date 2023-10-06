require "yaml"
tree = YAML.load_file("tree.yml")
tree[:uses][1]
File.unlink("tree.yml")
