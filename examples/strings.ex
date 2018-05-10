"hellö"

"""
  Esse tipo de "string" é muito utilizado para comentários
"""

# interporlacao

"hellö #{:world}"

IO.puts "hello\nworld"

is_binary("hellö")

byte_size("hellö")

# length

String.length("hellö")

# upcase

String.upcase("hellö")

# downcase

String.downcase("hellö")

# capitalize

String.capitalize("abcd")

# codepoints

String.codepoints("olá")

# split

String.split("foo bar", " ")
String.split("foo bar!", [" ", "!"])
pattern = :binary.compile_pattern([" ", "!"])
String.split("foo bar!", pattern)
String.split("foo bar")
String.split(" a b c ", " ", trim: true)

# at

String.at("elixir", 0)
String.at("elixir", 1)
String.at("elixir", -1)

# contains?

String.contains? "elixir of life", "of"
String.contains? "elixir of life", ["life", "death"]
String.contains? "elixir of life", ["death", "mercury"]

# duplicate

String.duplicate("abc", 0)
String.duplicate("abc", 2)

# starts_with?

String.starts_with? "elixir", "eli"
String.starts_with? "elixir", ["erlang", "elixir"]
String.starts_with? "elixir", ["erlang", "ruby"]

# ends_wih?

String.ends_with? "language", "age"
String.ends_with? "language", ["youth", "age"]
String.ends_with? "language", ["youth", "elixir"]

# equivalent?

String.equivalent?("abc", "abc")
String.equivalent?("abc", "ABC")

# firs/last

String.first("elixir")
String.last("elixir")

# graphemes

String.graphemes("Ńaïve")

# jaro_distance

String.jaro_distance("dwayne", "duane")

# matching

String.match?("foo", ~r/foo/)

# replace

String.replace("a,b,c", ",", "-")
String.replace("a,b,c", ",", "-", global: false)
String.replace("a,b,c", "b", "[]", insert_replaced: 1)
String.replace("a,b,c", ",", "[]", insert_replaced: 2)
"a[],b[],c"
String.replace("ELIXIR", "", ".")

String.replace_leading("hello world", "hello ", "")
String.replace_leading("hello hello world", "hello ", "")
String.replace_leading("hello world", "hello ", "ola ")
"ola world"

# reversing

String.reverse("abcd")

# slice

String.slice("elixir", 1..3)

# convert

String.to_atom("my_atom")
String.to_float("2.2017764e+0")
String.to_float("3.0")
String.to_integer("123")

# trim

String.trim("\n  abc\n  ")

String.valid?("a")

# interpolation

x = "Apocalypse" 
y = "X-men #{x}"
IO.puts(y)

# concatenation

x = "Dark"
y = "Knight"
z = x <> " " <> y
IO.puts(z)

# Pipes

str = "hello"
str |> length()        # → 5
str |> codepoints()    # → ["h", "e", "l", "l", "o"]
str |> slice(2..-1)    # → "llo"
str |> split(" ")      # → ["hello"]
str |> capitalize()    # → "Hello"
str |> match(regex)