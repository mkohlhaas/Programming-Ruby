module VanityPuts
  refine Object do
    private

    def puts(*args)
      args.each do |arg|
        Kernel.puts("Dave says: #{arg}")
      end
    end
  end
end

class DavesStuff
  using VanityPuts

  def greet(msg)
    puts msg
  end
end

puts "Calling DavesStuff"
DavesStuff.new.greet("in DavesStuff")
puts "back"
