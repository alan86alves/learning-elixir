# Accessing a key
map = %{:a => 1, 2 => :b}
map = %{:a => 1, 2 => :b}
IO.puts(map[:a])
IO.puts(map[2])

# Inserting a key
map = %{:a => 1, 2 => :b}
new_map = Dict.put_new(map, :new_val, "value") 
IO.puts(new_map[:new_val])

# Updating a Value
map = %{:a => 1, 2 => :b}
new_map = %{ map | a: 25}
IO.puts(new_map[:a])

# Pattern Matching
%{:a => a} = %{:a => 1, 2 => :b}
IO.puts(a)

# Maps with Atom keys
map = %{:a => 1, 2 => :b} 
IO.puts(map.a) 