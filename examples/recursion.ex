defmodule Math do
    def fact(res, num) do
    if num === 1 do
        res
    else
        new_res = res * num
        fact(new_res, num-1)
        end
    end
end

IO.puts(Math.fact(1,5))

#####

a = ["Hey", 100, 452, :true, "People"]
defmodule ListPrint do
   def print([]) do
   end
   def print([head | tail]) do 
      IO.puts(head)
      print(tail)
   end
end

# Loop

defmodule Loop do
    def print_multiple_times(msg, n) when n <= 1 do
        IO.puts msg
    end

    def print_multiple_times(msg, n) do
        IO.puts msg
        print_multiple_times(msg, n - 1)
    end
end
 
 Loop.print_multiple_times("Hello", 10)