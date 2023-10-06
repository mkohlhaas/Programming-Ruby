# typed: true

module Aaagmnr
  class Options
    extend T::Sig

    DEFAULT_DICTIONARY = T.let("/usr/share/dict/words", String)
    attr_reader :dictionary, :words_to_find

    sig { params(argv: T::Array[String]).void }
    def initialize(argv)
      @dictionary = T.let(DEFAULT_DICTIONARY, String)
      parse(argv)
      @words_to_find = T.let(argv, T::Array[String])
    end

    sig { params(argv: T::Array[String]).void }
    private def parse(argv)
      OptionParser.new do |opts|
        opts.banner = "Usage:  anagram [ options ]  word..."

        opts.on("-d", "--dict path", String, "Path to dictionary") do |dict|
          @dictionary = dict
        end

        opts.on("-h", "--help", "Show this message") do
          puts opts
          exit
        end

        begin
          argv = ["-h"] if argv.empty?
          opts.parse!(argv)
        rescue OptionParser::ParseError => e
          warn e.message, "\n", opts
          exit(-1)
        end
      end
    end
  end
end
