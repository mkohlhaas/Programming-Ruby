def meth
  "original method"
end

alias original meth # !sh!

def meth
  "#{original} is now new and improved"
end

original

meth
