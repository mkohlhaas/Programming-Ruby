md = /(?<hour>\d\d):(?<min>\d\d)(..)/.match("12:50am")
"Hour is #{md[:hour]}, minute #{md[:min]}"
