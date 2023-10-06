require "singleton"

class MyClass
  attr_accessor :data
  include Singleton
end

a = MyClass.instance
b = MyClass.instance
a.data = 123
b.data
a.object_id
b.object_id
