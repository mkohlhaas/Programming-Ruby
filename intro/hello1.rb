# frozen_string_literal: true

def say_hello_goodbye(name)
  "I don't know why you say goodbye, #{name.capitalize}, I say hello"
end

puts 'John'.upcase

# call the method
puts say_hello_goodbye('john')
puts say_hello_goodbye('paul')
