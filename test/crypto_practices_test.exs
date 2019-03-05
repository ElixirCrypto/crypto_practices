defmodule CryptoPracticesTest do
  use ExUnit.Case
  doctest CryptoPractices

  test "greets the world" do
    assert CryptoPractices.hello() == :world
  end
end
