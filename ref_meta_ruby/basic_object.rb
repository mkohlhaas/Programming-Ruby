class SimpleBuilder < BasicObject
  def initialize
    @indent = 0
  end

  def __indented_puts__(string)
    ::Kernel.puts "#{" " * @indent} #{string}"
  end

  def respond_to_missing?
    true
  end

  def method_missing(name, *args)
    __indented_puts__("<#{name}>")
    @indent += 2
    __indented_puts__(args.join) unless args.empty?
    yield if ::Kernel.block_given?
    @indent -= 2
    __indented_puts__("</#{name}>")
  end
end

r = SimpleBuilder.new
r.person do
  r.name("Dave")
  r.address do
    r.street("123 Main")
    r.city("Pleasantville")
  end
end
