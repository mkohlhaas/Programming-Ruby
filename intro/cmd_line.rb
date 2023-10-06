# frozen_string_literal: true

a = []
5.times { |i| a.push(i) } # => 5 # => [0, 1, 2, 3, 4]
p a

puts "You gave #{ARGV.size} arguments"
p ARGV
