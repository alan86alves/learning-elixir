defmodule MyLogger do
  def start_link do
    # __MODULE__ refers to the current module
    spawn(__MODULE__, :init, [0])
  end

  def init(count) do
    # Here we could initialize other values if we wanted to
    loop(count)
  end

  def loop(count) do
    new_count = receive do
      {:log, msg} ->
        IO.puts msg
        count + 1
      {:stats} ->
        IO.puts "I've logged #{count} messages"
        count
    end
    loop(new_count)
  end
end

pid = MyLogger.start_link
send(pid, {:log, "First message"})
send(pid, {:log, "Another message"})
send(pid, {:stats})