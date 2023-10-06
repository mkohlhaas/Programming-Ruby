# typed: true

require "sorbet-runtime"

module Aaagmnr
  class Finder
    extend T::Sig

    sig { params(file_name: String).returns(Aaagmnr::Finder) }
    def self.from_file(file_name)
      new(File.readlines(file_name))
    end

    sig { params(dictionary_words: T::Array[String]).void }
    def initialize(dictionary_words)
      @signatures = T.let({}, T::Hash[String, T::Array[String]])
      dictionary_words.each do |line|
        word = line.chomp
        signature = signature_of(word)
        (@signatures[signature] ||= []) << word
      end
    end

    sig { params(word: String).returns(T.nilable(T::Array[String])) }
    def lookup(word)
      signature = signature_of(word)
      @signatures[signature]
    end

    sig { params(word: String).returns(String) }
    def signature_of(word)
      word.unpack("c*").sort.pack("c*")
    end
  end
end
