def show(cmd)
  eval(cmd, TOPLEVEL_BINDING)
  printf "%-25s #=> %s\n", cmd, eval("a.inspect", TOPLEVEL_BINDING)
end
