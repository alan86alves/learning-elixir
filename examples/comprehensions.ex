iex> for n <- [1, 2, 3, 4], do: n * n
[1, 4, 9, 16]

iex> for n <- 1..3, do: n * 2
[2, 4, 6]

iex> for n <- 1..4, do: n * n
[1, 4, 9, 16]

iex> values = [good: 1, good: 2, bad: 3, good: 4]
iex> for {:good, n} <- values, do: n * n
[1, 4, 16]

import Integer
iex> for x <- 1..10, is_even(x), do: x
[2, 4, 6, 8, 10]