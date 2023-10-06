pipe = IO.popen("uname")
p(pipe.readlines)
puts "Parent is #{Process.pid}"
IO.popen("date") { |pipe| puts pipe.gets }
IO.popen("-") { |pipe| $stderr.puts("#{Process.pid} is here, pipe=#{pipe}") }
Process.waitall
