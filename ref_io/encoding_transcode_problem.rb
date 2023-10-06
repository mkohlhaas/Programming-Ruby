f = File.open("#{__dir__}/iso-8859-1.txt")
puts f.external_encoding.name
line = f.gets
puts line.encoding
puts "ol?"
exit
puts line
