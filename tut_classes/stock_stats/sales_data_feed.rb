# frozen_string_literal: true

# SalesDataFeed class
class SalesDataFeed
  def initialize
    @items = []
  end

  def add_sales_item(isbn, amount)
    @items << Book.new(isbn, amount)
  end

  def total_sales
    @items.inject(0.0) { |sum, item| sum + item.amount }
  end

  def print_plain_text_data
    @items.each do |item|
      printf("%-10<isbn> %10.2<amount>\n", isbn: item.isbn, amount: item.amount)
    end
    printf("           ----------\n")
    printf("%21.2f\n", total_sales)
  end
end

# CsvDataFeed class
class CsvDataFeed < SalesDataFeed
  require 'csv'

  def initialize(csv_file_name)
    super()
    CSV.foreach(csv_file_name, headers: true) do |row|
      add_sales_item(row['isbn'], row['Amount'])
    end
  end
end

class XmlDataFeed < SalesDataFeed
end

feed = CsvDataFeed.new('data.csv')

puts feed.total_sales

feed.print_plain_text_data
