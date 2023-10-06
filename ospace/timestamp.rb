class Object
  attr_accessor :timestamp
end

class Class
  old_new = instance_method(:new)
  define_method(:new) do |*args, **kwargs, &block|
    result = old_new.bind_call(self, *args, **kwargs, &block)
    result.timestamp = Time.now unless result.is_a?(Time)
    result
  end
end
