# encoding: sjis

require_relative "iso-8859-1"
require_relative "utf"

def show_encoding(str)
  puts "'#{str.bytes.to_a}' (#{str.size} chars, #{str.bytesize} bytes) " \
    "has encoding #{str.encoding.name}"
end

show_encoding(STRING_ISO)
show_encoding(STRING_U)
show_encoding("cat")
