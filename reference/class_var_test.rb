class Holder
  @@var = 99

  def Holder.var=(val)
    @@var = val
  end

  def var
    @@var
  end
end

a = Holder.new
puts a.var
Holder.var = 123
puts a.var
