class Consumer
  def takes_args(a, b, c)
    p "#{a} #{b} #{c}"
  end

  def takes_keys(a:, b:, c:)
    p "#{a} #{b} #{c}"
  end
end

class NotAnArrayOrAHash
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def to_a
    [@a, @b, @c]
  end

  def to_hash
    {a: @a, b: @b, c: @c}
  end
end

obj = NotAnArrayOrAHash.new(1, 2, 3)
c = Consumer.new
c.takes_args(*obj)
c.takes_keys(**obj)
