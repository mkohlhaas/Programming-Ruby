require "csv"
csv = CSV.new($stdout, col_sep: "|")
csv << [1, "line 1", 27]
csv << [2, nil, 123]
csv << [3, "|bar|", 32.5]
csv.close
