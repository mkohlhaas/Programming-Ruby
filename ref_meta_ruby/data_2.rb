LightBulb = Data.define(:brightness, :watts, :color)
cool_bulb = LightBulb.new(1600, 15, 4000)
warmer_bulb = cool_bulb.with(color: 2700)

cool_bulb.to_h
warmer_bulb.to_h
