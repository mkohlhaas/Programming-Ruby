require "benchmark"
string = "Stormy Weather"
m = string.method(:length)
Benchmark.bm(6) do |x|
  x.report("direct") { 100_000.times { string.length } }
  x.report("call") { 100_000.times { m.call } }
  x.report("send") { 100_000.times { string.send(:length) } }
  x.report("eval") { 100_000.times { eval("string.length") } }
end
