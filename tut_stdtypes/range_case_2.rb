$stdin.reopen(DATA)
car_age = gets.to_f # let's assume it's 9.5
case car_age
when 0..0
  puts "Mmm.. new car smell"
when 1..2
  puts "Nice and new"
when 3..9
  puts "Reliable but slightly dinged"
when 10..29
  puts "Clunker"
else
  puts "Vintage gem"
end
__END__
9.5
