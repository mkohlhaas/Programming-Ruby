f = File.open("#{__dir__}/iso-8859-1.txt", "r:iso-8859-1")
puts f.external_encoding.name
line = f.gets
puts line.encoding
puts "ol?"
exit
puts line
