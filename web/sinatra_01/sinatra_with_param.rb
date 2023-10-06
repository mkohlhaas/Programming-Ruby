require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "sinatra", require: false
  gem "thin"
end

require "sinatra"

get "/user/:username" do |block_un|
  [
    "<p>Hello, #{params["username"]}</p>",
    "<p>#{block_un} has the same value</p>"
  ]
end
