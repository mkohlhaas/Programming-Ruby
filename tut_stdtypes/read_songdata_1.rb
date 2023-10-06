Song = Struct.new(:title, :name, :length)

songs = File.readlines("code/tut_stdtypes/songdata", chomp: true).map do |line|
  _file, length, name, title = line.chomp.split(/\s*\|\s*/)
  Song.new(title, name, length)
end
puts songs[1]
