require "open-uri"

URI.open("https://pragprog.com/titles/ruby5/programming-ruby-3-2-5th-edition/") do |f|
  puts f.read.scan(/<img class=".*?" src="(.*?)"/m).uniq[0,3]
end
