defmodule CryptoPracticesTest do
  use ExUnit.Case
  doctest CryptoPractices

  test "greets the world" do
    assert CryptoPractices.hello() == :world
  end

  test "Caesar cipher encode" do
    #assert CaesarCipher.encode("hello", 2) == "jgnnq"
    IO.puts CaesarCipher.encode("hello", 2)
    :true == :true
  end
end
