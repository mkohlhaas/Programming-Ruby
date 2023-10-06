require "yaml"
tree = {
  name: "ruby",
  uses: %w[scripting web testing etc]
}

File.open("tree.yml", "w") { |f| YAML.dump(tree, f) }
