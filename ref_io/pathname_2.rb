require "pathname"
p5 = Pathname.new("testdir")
puts p5.realpath
puts p5.children
