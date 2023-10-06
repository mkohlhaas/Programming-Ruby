sprintf("%<number>d %04<number>x", number: 123)
sprintf("%08<number>b '%5{number}'", number: 123)
sprintf("%6<k>s: %<v>s", k: "Dave", v: "Ruby")
sprintf("%6{k}: %{v}", k: "Dave", v: "Ruby")
