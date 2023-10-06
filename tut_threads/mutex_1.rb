alias :old_print :print
def print(str)
  old_print str
  sleep 0.001
end
$stdout.sync = true
sum = 0
mutex = Thread::Mutex.new
threads = 10.times.map do
  Thread.new do
    100_000.times do
      # one at a time, please
      mutex.lock
      new_value = sum + 1
      print "#{new_value}  " if new_value % 250_000 == 0
      sum = new_value
      mutex.unlock
    end
  end
end
threads.each(&:join)
puts "\nsum = #{sum}"
fail "Suspicious sum: #{sum}" unless sum == 1_000_000
