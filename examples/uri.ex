URI.decode("http%3A%2F%2Felixir-lang.org")

URI.decode_query("foo=1&bar=2")
URI.decode_query("percent=oh+yes%21", %{"starting" => "map"})