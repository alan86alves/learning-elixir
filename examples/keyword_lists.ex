# drop

Keyword.drop([a: 1, b: 2, c: 3], [:b, :d])

# equal?

Keyword.equal?([a: 1, b: 2], [b: 2, a: 1])

# get

Keyword.get([a: 1], :a)

# merge

Keyword.merge([a: 1, b: 2], [a: 3, d: 4, a: 5])

# put

Keyword.put([a: 1], :b, 2)
Keyword.put_new([a: 1], :b, 2)

# replace

Keyword.replace!([a: 1, b: 2, a: 4], :a, 3)

# take

Keyword.take([a: 1, b: 2, c: 3, a: 5], [:a, :c, :e])

# update!

Keyword.update!([a: 1], :a, &(&1 * 2))

# values

Keyword.values([a: 1, b: 2])

# example

dados = [nome: "Alan", empresa: "Agenda Edu"]
dados ++ [profissao: "Programador"]

