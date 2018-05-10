# send self(), {:hello}
# receive do
#   {:hello, msg} -> IO.puts msg
#   _ -> IO.puts "won't match"
# end

# ----------------------------------------------------

# parent = self()
# spawn fn -> send(parent, {:hello, parent, self()}) end
# receive do
#   {:hello, pidf, pid} -> IO.puts "#{inspect pidf} Got hello from #{inspect pid}"
# end

# ----------------------------------------------------

# send self(), :a
# send self(), :b
# send self(), :c
# flush() # Print all msg in mailbox

# ----------------------------------------------------

# spawn won’t wait for this process to finish.
# pid = spawn(fn ->
#   IO.puts "hello from process"
#   :timer.sleep(50) # miliseconds
# end)

pid = spawn(fn -> IO.puts "hello from process" end)
IO.puts Process.alive? pid

# ----------------------------------------------------
