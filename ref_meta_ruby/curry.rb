class Currier
  def add_four_things(a, b, c, d)
    a + b + c + d
  end
end

currier = Currier.new
add_two_things = currier.method(:add_four_things).curry.call(1, 2)
add_two_things.call(3, 4)

add_one_thing = add_two_things.call(5)
add_one_thing.call(7)
