pipe = IO.popen(["bc", {$stderr => $stdout}], "r+")
pipe.puts "1 + 3; bad_function()"
pipe.close_write
puts pipe.readlines
