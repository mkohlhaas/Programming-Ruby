re = %r{
  (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?)
  \s and \s
  (\g<title>\s)? (.+)
}x
match_data = re.match("Mr Bond and Ms Monneypenny")
match_data[0]
match_data[:title]

second_match = re.match("Samson and Delilah")
second_match[0]
second_match[:title]
