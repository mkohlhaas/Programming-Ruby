def csv_from_row(accumulator, row)
  result = ""
  until row.empty?
    entry = row.shift.to_s
    if /[,"]/.match?(entry)
      entry = entry.gsub(/"/, '""')
      result << '"' << entry << '"'
    else
      result << entry
    end
    result << "," unless row.empty?
  end
  accumulator << result << CRLF
end

result = ""
query.each_row { |row| csv_from_row(result, row) }

http.write(result)
