re = %r{(?:(red)|blue) ball and (?(1)blue|red) bucket}

p re.match("red ball and blue bucket")
p re.match("blue ball and red bucket")
p re.match("blue ball and blue bucket")
