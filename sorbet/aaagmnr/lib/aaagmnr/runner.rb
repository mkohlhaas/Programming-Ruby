# typed: true

module Aaagmnr
  class Runner
    extend T::Sig

    sig { params(argv: T::Array[String]).void }
    def initialize(argv)
      @options = T.let(Options.new(argv), Aaagmnr::Options)
    end

    sig { void }
    def run
      finder = Finder.from_file(@options.dictionary)
      @options.words_to_find.each do |word|
        anagrams = finder.lookup(word)
        if anagrams
          puts "Anagrams of #{word}: #{anagrams.join(", ")}"
        else
          puts "No anagrams of #{word} in #{@options.dictionary}"
        end
      end
    end
  end
end
