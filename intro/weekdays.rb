# frozen_string_literal: true

today = Time.now
puts today.wday

if today.saturday?
  puts 'Do chores around the house'
elsif today.sunday?
  puts 'Relax'
else
  puts 'Go to work'
end
