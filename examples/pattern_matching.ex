# Elixir - Pattern Matching
{a, b, c} = {:hello, "world", 42}

[head | tail] = [1, 2, 3]

[var_1, _unused_var, var_2] = [{"First variable"}, 25, "Second variable" ]
[_, [_, {a}]] = ["Random string", [:an_atom, {24}]]