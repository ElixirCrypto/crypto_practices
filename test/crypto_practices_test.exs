defmodule CryptoPracticesTest do
  use ExUnit.Case
  doctest CryptoPractices

  test "greets the world" do
    assert CryptoPractices.hello() == :world
  end

  test "Caesar cipher encode" do
    assert CaesarCipher.encode("hello", 2) == "jgnnq"
    assert CaesarCipher.encode("a789", 2) == "c9ab"
  end

  test "Caesar cipher decode" do
    assert CaesarCipher.decode("jgnnq", 2) == "hello"
    assert CaesarCipher.decode("c9ab", 2) == "a789"
  end

  test "Caesar cipher cryptanalysis" do
    CaesarCipher.cryptanalysis("jgnnq")
    :true
  end
end
