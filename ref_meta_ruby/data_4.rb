LightBulb = Data.define(:brightness, :watts, :color) do
  def warmth
    (color < 4500) ? "cool" : "warm"
  end
end

bulb = LightBulb.new(1600, 15, 5000)
puts bulb.warmth
