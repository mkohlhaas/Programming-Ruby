# need to make the output deterministic
# puts 250000, 250000, 250000, 250000
alias :old_print :print
def print(str)
  old_print(str)
  sleep 0.0001
end
$stdout.sync = true
sum = 0
threads = 10.times.map do
  Thread.new do
    100_000.times do
      new_value = sum + 1
      print "#{new_value}   " if new_value % 250_000 == 0
      sum = new_value
    end
  end
end
threads.each(&:join)
puts "\nsum = #{sum}"
fail "Suspicious sum: #{sum}" if sum == 1_000_000
