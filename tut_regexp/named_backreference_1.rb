same   = "12:15-12:45"
differ = "12:45-13:15"

 # use numbered backreference
same   =~ /(\d\d):\d\d-\1:\d\d/
differ =~ /(\d\d):\d\d-\1:\d\d/

 # use named backreference
same   =~ /(?<hour>\d\d):\d\d-\k<hour>:\d\d/
differ =~ /(?<hour>\d\d):\d\d-\k<hour>:\d\d/
