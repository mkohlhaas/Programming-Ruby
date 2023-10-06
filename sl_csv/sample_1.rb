require "csv"
total_cost = 0
CSV.foreach(
  "#{__dir__}/csvfile_with_header.csv",
  headers: true, converters: :numeric
) do |data|
  total_cost += data["Count"] * data["Price"]
end
puts "Total cost is #{total_cost}"
