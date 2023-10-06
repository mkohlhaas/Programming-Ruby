require "win32ole"
ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true
puts "Height = #{ie.Height}"
ie.Height = 300
