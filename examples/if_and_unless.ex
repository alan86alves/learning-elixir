a = true
if a === true do
   IO.puts "Variable a is true!"
   IO.puts "So this code block is executed"
end

a = false
if a === true do
   IO.puts "Variable a is true!"
else
   IO.puts "Variable a is false!"
end

a = false
unless a === true do
   IO.puts "Condition is not satisfied"
   IO.puts "So this code block is executed"
end

if true == true, do: IO.puts ""

if condition, do: true_expr, else: flase_expr