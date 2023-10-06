def header(name, level: 1, upper: false, **attrs)
  name = name.upcase if upper
  attr_string = attrs.map { |k, v| %(#{k}="#{v}") }.join(" ")
  "<h#{level} #{attr_string}>#{name}</h#{level}>"
end

puts header("TOC", class: "nav", level: 2, id: 123)
