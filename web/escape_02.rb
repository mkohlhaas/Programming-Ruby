require "cgi"
puts CGI.escapeElement("<hr><a href='/mp3'>Click Here</a><br>", "A")
