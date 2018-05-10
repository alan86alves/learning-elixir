#
# +--------------+                                 
# |              |                                 
# |     iex      |                                 
# |              |                                 
# +------+-------+                                 
#        |                                         
#        |{pong_pid, :ping} we do it first because in {from, :ping} - from must be pong PID!
#        |                                         
# +------v-------+  {self, :pong}  +--------------+
# |              +----------------->              |
# | ping process |                 | pong process |
# |              <-----------------+              |
# +--------------+  {self, :ping}  +--------------+
#

defmodule Table do
  def ping do
    receive do
      {from, :ping} ->
        IO.puts 'ping process reached, going to respond with :pong'
        :timer.sleep(1000)
        send from, {self(), :pong}
    end
    ping
  end

  def pong do #1
    receive do
      {from, :pong} -> #2
        IO.puts 'pong process reached, going to respond with :ping'
        :timer.sleep(1000) #4
        send from, {self(), :ping} #3
    end
    pong
  end

  def start do
    ping_pid = spawn __MODULE__, :ping, []
    pong_pid = spawn __MODULE__, :pong, [] #5

    {ping_pid, pong_pid}
  end
end

{ping, pong} = Table.start
send ping, {pong, :ping} 

Process.exit(ping, :kill)

Process.alive? ping
Process.alive? pong