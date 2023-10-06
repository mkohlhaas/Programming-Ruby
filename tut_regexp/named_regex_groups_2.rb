  /(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am"
  "Hour is #{hour}, minute #{min}"

  # You can mix named and position-based references
  "Hour is #{hour}, minute #{$2}"
