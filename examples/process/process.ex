pid = spawn(fn -> :timer.sleep 15000 end)

Process.info(pid)
Processalive?(pid)
