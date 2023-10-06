def meth5
  p = lambda { return 99 }
  res = p.call
  "The block returned #{res}"
end

meth5
