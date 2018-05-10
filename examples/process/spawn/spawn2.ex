defmodule SpawnExample do
  def start do
    IO.puts "============= Starting Application"

    # Now our `spawn_proc/1` function receives one argument
    # the number of processes it's supposed to spawn.
    spawn_proc(10)
  end

  
  def proc_func do
    IO.puts "* Started Process"
    :timer.sleep(1000)
    IO.puts "* Finished Process"
  end

  # Now we will use pattern matching to implement recursion
  # into our application, this can be mind bending if
  # you haven't read the previous articles.
  #
  # This basically means that this signature of `spawn_proc/1`
  # will be matched whenever the argument sent to it is `0`
  #
  defp spawn_proc(0) do
    IO.puts "============= Finishing Application"
  end

  # As you might have noticed we have two methods with the same
  # name but different signatures, despite of both getting 
  # one argument, by using pattern matching we can be sure that
  # unless the argument is `0` this is the function that will 
  # be executed
  #
  defp spawn_proc(number_of_procs) do
    spawn(__MODULE__, :proc_func, [])
    
    # After spawning the new process, we decrease the 
    # `number_of_procs` and call this same method again, now with
    # `number_of_procs - 1` as its argument, this is a great
    # example of concurrency + recursion + patter matching.
    # When `number_of_procs - 1` is equal `0` the first `spawn_proc/1`
    # function will be called, finishing the application.
    #
    procs_missing = number_of_procs - 1
    spawn_proc(procs_missing)
  end
end

# Let's start our application and check the output
SpawnExample.start
