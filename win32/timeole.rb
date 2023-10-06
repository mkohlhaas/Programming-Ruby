require_relative 'tapi'
require 'benchmark'
include Benchmark

bmbm(10) do |test|

  # test.report("Dynamic") do
  #   nm = WIN32OLE.new('TAPI.TAPI.1')
  #   10000.times { nm.CallHubs }
  # end

  test.report("Via proxy") do
    nm = TAPI_TAPI_1.new
    10000.times { nm.Addresses }
  end
end
