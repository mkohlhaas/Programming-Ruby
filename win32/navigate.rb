require "win32ole"
ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true
ie.navigate("https://www.pragprog.com")
