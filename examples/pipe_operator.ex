# N funções usando o modelo de variaveis
t1 = argument("arg")
t2 = ipsum(t1)
t3 = bar_two(t2, "Second")
result = fool(t3)

# N funções usando uma única linha
foo(bar_two(ipsum(argument("arg")), "Second"))

# N funções usando funcional
argument("arg")
    |> ipsum
    |> bar_two "second"
    |> fool     