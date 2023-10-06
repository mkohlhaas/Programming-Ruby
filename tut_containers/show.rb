# frozen_string_literal: true

def show(cmd)
  eval(cmd, TOPLEVEL_BINDING)
  printf "%-25<cmd> #=> %<inspect>\n", cmd, inspect: eval('a.inspect', TOPLEVEL_BINDING)
end
