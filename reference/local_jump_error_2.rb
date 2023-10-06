def meth3
  yield
end

t = Thread.new do
  meth3 { return }
end

t.join
