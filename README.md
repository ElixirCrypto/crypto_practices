# Crypto Practices

**Some Practices to implement cryptography algorithm and cryptanalysis.**

### Caesar cipher
```elixir
iex> CaesarCipher.encode("hello", 2)
iex> CaesarCipher.decode("jgnnq", 2)
iex> CaesarCipher.cryptanalysis("jgnnq")

```

## Installation
Add `crypto_practices` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:crypto_practices, "~> 0.0.1"}
  ]
end
```

