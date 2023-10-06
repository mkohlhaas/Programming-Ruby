 # match duplicated letter
str = 'He said "Hello"'
show_regexp(str, /(?<char>\w)\k<char>/)

 # match duplicated adjacent substrings
str = "Mississippi"
show_regexp(str, /(?<seq>\w+)\k<seq>/)
