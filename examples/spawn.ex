iex> pid = spawn(fn -> 2 * 2 end)
#PID<0.130.0>

iex> Process.alive?(pid)
false

iex> pid = self()
#PID<0.56.0>

iex> Process.alive?(pid)
true

