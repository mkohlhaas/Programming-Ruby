require "stringio"
require "csv"
require "minitest/autorun"

class TestCSV < Minitest::Test
  def test_simple
    StringIO.open do |op|
      CSV(op) do |csv|
        csv << [1, "line 1", 27]
        csv << [2, nil, 123]
      end
      assert_equal("1,line 1,27\n2,,123\n", op.string)
    end
  end
end
