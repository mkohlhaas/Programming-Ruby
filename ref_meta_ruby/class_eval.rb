class EmptyClass
end
EmptyClass.module_eval <<-STRING, __FILE__, __LINE__ + 1
  def greeting()
    "Hi There!"
  end
STRING

puts EmptyClass.new.greeting
