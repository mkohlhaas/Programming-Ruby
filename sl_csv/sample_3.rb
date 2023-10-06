require "csv"

table = CSV.read(
  "#{__dir__}/csvfile_with_header.csv",
  headers: true, header_converters: :symbol
)
puts "Row count = #{table.count}"
puts "First row = #{table[0].fields}"
puts "Count of eggs = #{table[0][:count]}"
table << [99, "red balloons", 1.23]
table[:in_stock] = [10, 5, 10, 10]
puts "\nAfter adding a row and a column, the new table is:"
puts table
