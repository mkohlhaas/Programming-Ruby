# The regexp in this file is wrapped in a method
# to allow it to be required into other files. This
# is purely an artifact of the way we build the
# Ruby book.

def palindrome_matcher
palindrome_matcher = /
\A
  (?<palindrome>
                # nothing, or
   | .          # a single character, or
   | (?:        # x <palindrome> x
       (?<some_letter>.)
       \g<palindrome>
       \k<some_letter+0>
     )
  )
\z
/x
end
