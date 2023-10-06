def meth2
  proc { return }
end
res = meth2
res.call
