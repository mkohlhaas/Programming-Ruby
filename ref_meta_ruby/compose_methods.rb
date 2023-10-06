class Foo
  def triple(x)
    x + x + x
  end
end

squarer = proc { |x| x * x }
foo_instance = Foo.new
method = foo_instance.method(:triple)

pointing_left = (method << squarer)
pointing_right = (method >> squarer)

pointing_left.call(5)
pointing_right.call(5)
