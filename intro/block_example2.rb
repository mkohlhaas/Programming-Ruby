# frozen_string_literal: true

def who_says_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end

puts 'hallo'.length

who_says_what { |person, phrase| puts "#{person} says #{phrase}" }
