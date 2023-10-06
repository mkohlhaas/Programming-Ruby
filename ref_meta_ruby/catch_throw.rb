def routine(n)
  print n, " "
  throw :done if n <= 0
  routine(n - 1)
end
catch(:done) { routine(4) }
