Dir.children("testdir")
Dir.entries("testdir")

result = []
Dir.each_child("testdir") { |name| result << name }
result

instance = Dir.new("testdir")
instance.children
instance_result = []
instance.each { |name| instance_result << name }
instance_result
