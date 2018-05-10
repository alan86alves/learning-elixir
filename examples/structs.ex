# Defining Structs
defmodule User do
    defstruct name: "John", age: 27
end

new_john = (%User{})
ayush = %User{name: "Ayush", age: 20}
megan = %User{name: "Megan"}

# Accessing and Updating Structs

defmodule User do
    defstruct name: "John", age: 27
end

john = %User{}
#john right now is: %User{age: 27, name: "John"}

#To access name and age of John, 
IO.puts(john.name)
IO.puts(john.age)

