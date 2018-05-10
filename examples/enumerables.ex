# Map

iex> Enum.map([1, 2, 3], &(&1 * 2))
[2, 4, 6]

iex> Enum.map([1, 2, 3], fn(a) -> a * 2 end)
[2, 4, 6]

iex> Enum.map(1..3, &(&1 * 2))
[2, 4, 6]



map = %{a: 1, b: 2}
Enum.map(map, fn {k, v} -> {k, v * 2} end)

# Map Join

Enum.map_join([1, 2, 3], &(&1 * 2))
Enum.map_join([1, 2, 3], " = ", &(&1 * 2))

# all?

Enum.all?([2, 4, 6], fn(x) -> rem(x, 2) == 0 end)
Enum.all?([1, 2, 3])
Enum.all?([1, nil, 3])

# any?

Enum.any?([2, 4, 6], fn(x) -> rem(x, 2) == 1 end)
Enum.any?([false, false, false])
Enum.any?([false, true, false])

# at

iex> Enum.at([2, 4, 6], 0)
2

iex> Enum.at([2, 4, 6], 2)
6

# concat

Enum.concat([1..3, 4..6, 7..9])
Enum.concat([[1, [2], 3], [4], [5, 6]]
Enum.concat([1, 2, 3], [4, 5, 6])

# count

Enum.count([1, 2, 3])
Enum.count([1, 2, 3, 4, 5], fn(x) -> rem(x, 2) == 0 end)

# chunk

res = Enum.chunk([1, 2, 3, 4, 5, 6], 2)
IO.puts(res)

# dedup

Enum.dedup([1, 2, 3, 3, 2, 1])
Enum.dedup([1, 1, 2, 2.0, :three, :"three"])

# drop

Enum.drop([1, 2, 3], 2)
Enum.drop([1, 2, 3], 0)
Enum.drop([1, 2, 3], -1)

# each

Enum.each(["Hello", "Every", "one"], fn(s) -> IO.puts(s) end)
Enum.each(["some", "example"], fn(x) -> IO.puts x end)

# empty?

Enum.empty?([])
Enum.empty?([1, 2, 3])

# filter

Enum.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 en

# join

Enum.join([1, 2, 3])
Enum.join([1, 2, 3], " = ")

# reduce

res = Enum.reduce([2, 1], 5, fn(x, accum) -> x + accum end)
IO.puts(res)

res = Enum.reduce([2, 3], fn(x, accum) -> x + accum end)
IO.puts(res)

# uniq

res = Enum.uniq([1, 2, 2, 3, 3, 3, 4, 4, 4, 4])
IO.puts(res)

# max

Enum.max([1, 2, 3])
Enum.max([~D[2017-03-31], ~D[2017-04-01]])
Enum.max_by(["a", "aa", "aaa"], fn(x) -> String.length(x) end)

# min

Enum.min([1, 2, 3])
Enum.min([], fn -> 0 end)
Enum.min_by(["a", "aa", "aaa"], fn(x) -> String.length(x) end)

# member

Enum.member?(1..10, 5)
Enum.member?(1..10, 5.0)

# min_max

Enum.min_max([2, 3, 1])
Enum.min_max([], fn -> {nil, nil} end)
Enum.min_max_by(["aaa", "bb", "c"], fn(x) -> String.length(x) end)

# random

Enum.random([1, 2, 3])

# reduce

Enum.reduce([1, 2, 3, 4], fn(x, acc) -> x * acc end)

# reject

Enum.reject([1, 2, 3], fn(x) -> rem(x, 2) == 0 end)

# reverse

Enum.reverse([1, 2, 3])

# reverse_slice

Enum.reverse_slice([1, 2, 3, 4, 5, 6], 2, 4)

# scan

Enum.scan(1..5, &(&1 + &2))

# shuffle

Enum.shuffle([1, 2, 3])

# slice

Enum.slice(1..100, 5..10)

# sort

Enum.sort([3, 2, 1])
Enum.sort ["some", "kind", "of", "monster"], &(byte_size(&1) <= byte_size(&2))

# soma

iex> [1,2,3] ++ [1,2,3]
[1,2,3,1,2,3]

iex> [1,2,3,3] -- [3]
[1,2,3]

iex> [1,2,3,3] -- [3,3]
[1,2]
