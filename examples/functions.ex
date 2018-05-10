# Anonymous Functions
sum = fn (a, b) -> 
    a + b 
end
IO.puts(sum.(1, 5))

# Using the Capture Operator
sum = &(&1 + &2) 
IO.puts(sum.(1, 2))

# Pattern Matching Functions
handle_result = fn
    {var1} -> IO.puts("#{var1} found in a tuple!")
    {var_2, var_3} -> IO.puts("#{var_2} and #{var_3} found!")
end
handle_result.({"Hey people"})
handle_result.({"Hello", "World"})

# Private Functions
defmodule Greeter do
    def hello(name), do: phrase <> name
    defp phrase, do: "Hello "
 end
 
 Greeter.hello("world")

 # Default arguments
defmodule Greeter do
    def hello(name, country \\ "en") do
        phrase(country) <> name
    end

    defp phrase("en"), do: "Hello, "
    defp phrase("es"), do: "Hola, "
end

Greeter.hello("Ayush", "en")
Greeter.hello("Ayush")
Greeter.hello("Ayush", "es")

# Underscore (_foo)
defmodule Example do
    # Function names may also start with an underscore.
    # Such functions are never imported by default:
    def _wont_be_imported do
        :oops
    end

    def wont_be_imported do
        :oops
    end
end
import Example
wont_be_imported
_wont_be_imported