require "net/http"

uri = URI("https://pragprog.com/titles/ruby5/programming-ruby-3-2-5th-edition/")
Net::HTTP.start(
  "pragprog.com",
  Net::HTTP.https_default_port,
  use_ssl: true
) do |http|
  request = Net::HTTP::Get.new(uri)
  response = http.request(request)
  if response.code == "200"
    puts response.body.scan(/<img class=".*?" src="(.*?)"/m).uniq[0, 3]
  end
end
