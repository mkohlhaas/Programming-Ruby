re = %r{
  ^(?>
      (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?)
      \s and \s
    )
    (?(<title>)\g<title>\s) (.+)
}x
match_data = re.match("Mr Smith and Sally")
match_data

successful_match = re.match("Mr Smith and Ms Sally")
successful_match[0]
successful_match[:title]
