class Regexp
  OPTION_MAP = {IGNORECASE => "i", EXTENDED => "x", MULTILINE => "m"}

  def option_string
    option_bits = options
    OPTION_MAP.map do |bit, string|
      ((option_bits & bit) > 0) ? string : nil
    end.compact.join
  end
end
