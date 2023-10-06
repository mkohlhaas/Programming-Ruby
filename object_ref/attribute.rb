class Demo
  attr_reader :attr

  def attr=(val)
    @attr = val
    "return value"
  end
end

d = Demo.new #!sh!

# In all these cases, @attr is set to 99
d.attr = 99
d.attr=(99)
d.send(:attr=, 99)
