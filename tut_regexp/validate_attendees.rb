NAMES = [
  "Mr Jones and Sally",
  "Mr Bond and Ms Moneypenny",
  "Samson and Delilah",
  "Dr Jekyll and himself",
  "Ms Hinky Smith and Ms Jones",
  "Dr Wood and Mrs Wood",
  "Thelma and Louise"
]

NAMES.each do |line|
  re = %r{ ^(?>
             (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?) \s and \s
          )
             (?(<title>)\g<title>\s) (.+)
        }x
  if line.match?(re)
    puts("VALID:   #{line}")
  else
    puts("INVALID: #{line}")
  end
end
