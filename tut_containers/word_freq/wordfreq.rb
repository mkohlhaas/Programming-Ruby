require_relative "words_from_string"
require_relative "count_frequency"

raw_text = $stdin.read
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
p counts
