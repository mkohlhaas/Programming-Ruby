def header(name, level:, upper: false)
  name = name.upcase if upper
  "<h#{level}>#{name}</h#{level}>"
end

header("Introduction", level: 1)
header("Getting started", level:2)
header("Conclusion", upper: true, level: 1)
