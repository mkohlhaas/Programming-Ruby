require "json"
data = {name: "dave", address: %w[tx usa], age: 17}
serialized = data.to_json
serialized # !to_s!
File.open("data.json", "w") { |f| f.puts serialized } # !sh!
