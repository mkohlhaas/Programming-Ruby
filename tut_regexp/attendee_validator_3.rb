re = %r{
  (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?)
  \s and \s
  (?(<title>)\g<title>\s) (.+)
}x
match_data = re.match("Mr Smith and Sally")
match_data[0]
match_data[:title]
