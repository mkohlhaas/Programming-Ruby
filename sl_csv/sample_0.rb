require "csv"
CSV.foreach("#{__dir__}/csvfile.csv") do |row|
  qty = row[0].to_i
  price = row[2].to_f
  printf "%20s: $%5.2f %s\n", row[1], qty * price, row[3] || "  ---"
end
