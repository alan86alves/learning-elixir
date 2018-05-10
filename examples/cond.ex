defmodule HowCondWork do
	def test_cond(x) do
		cond do
		   x == 10 -> IO.puts "You guessed 10!"
		   x == 46 -> IO.puts "You guessed 46!"
		   x == 42 -> IO.puts "You guessed 42!"
		   true    -> IO.puts "I give up."
		end
	end
end

HowCondWork.test_cond(10)