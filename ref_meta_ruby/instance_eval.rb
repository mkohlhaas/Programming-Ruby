class Klass
  def initialize
    @secret = 99
  end
end
k = Klass.new
k.instance_eval { @secret }
