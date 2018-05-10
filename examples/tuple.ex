iex> {}
{}
iex> {1, :two, "three"}
{1, :two, "three"}

#

iex> tuple = {1, :two, "three"}
iex> elem(tuple, 0)
1
iex> elem(tuple, 2)
"three"

# 

iex> tuple_size({})
0
iex> tuple_size({1, 2, 3})
3

#

iex> tuple = {:foo, :bar}
iex> Tuple.append(tuple, :baz)
{:foo, :bar, :baz}

#

iex> tuple = {:foo, :bar, :baz}
iex> Tuple.delete_at(tuple, 0)
{:bar, :baz}

#

iex> Tuple.duplicate(:hello, 3)
{:hello, :hello, :hello}

#

iex> tuple = {:bar, :baz}
iex> Tuple.insert_at(tuple, 0, :foo)
{:foo, :bar, :baz}
iex> Tuple.insert_at(tuple, 2, :bong)
{:bar, :baz, :bong}

#

iex> tuple = {:foo, :bar, :baz}
iex> Tuple.to_list(tuple)
[:foo, :bar, :baz]
