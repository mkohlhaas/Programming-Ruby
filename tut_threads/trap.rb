trap("CLD") do
  pid = Process.wait
  puts "Child pid #{pid}: terminated"
  File.delete("output.txt")
  exit
end

spawn("sort testfile > output.txt")

# Do other stuff...
sleep(0.2)
