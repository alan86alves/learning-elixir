defmodule HowCaseWork do
	def test_case do
		case {1, 2, 3} do
			{4, 5, 6} ->
				IO.puts "This clause won't match"
			{1, 2, 3} ->
				IO.puts "This clause will match and bind x to 2 in this clause"
			_ ->
				IO.puts "This clause would match any value"
		end
	end

	def test_case(x) do
		case x do
			1 -> IO.puts("Hi, I'm one")
			2 -> IO.puts("Hi, I'm two")
			3 -> IO.puts("Hi, I'm three")
			_ -> IO.puts("Oops, you dont match!")
		end
	end
end

HowCaseWork.test_case(2)

#

case {1, 2, 3} do
	{1, x, 3} when x > 0 ->
  	"Will match"
	_ ->
  	"Would match, if guard condition were not satisfied"
end
