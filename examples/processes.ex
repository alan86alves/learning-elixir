# The Spawn Function
pid = spawn(fn -> 2 * 2 end)
Process.alive?(pid)

pid = self
Process.alive?(pid)

# Message Passing
send(self(), {:hello, "Hi people"})

receive do
   {:hello, msg} -> IO.puts(msg)
   {:another_case, msg} -> IO.puts("This one won't match!")
end

receive do
    {:hello, msg}  -> msg
after
    10_000 -> "nothing after 10s" #like sleep?
end

# Links