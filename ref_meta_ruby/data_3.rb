LightBulb = Data.define(:brightness, :watts, :color)
bulb = LightBulb.new(1600, 15, 5000)

case bulb
in {brightness:, color: 5000}
  puts "a daylight bulb with #{brightness} lumens"
in {brightness:, color: 2700}
  puts "a warm bulb with #{brightness} lumens"
else
  puts "a different bulb"
end
