iex> true == :true
true

iex> is_atom(false)
true

iex> is_atom(Hello)
true

iex> Atom.to_string(:foo)
"foo"