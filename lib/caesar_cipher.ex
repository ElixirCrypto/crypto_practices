defmodule CaesarCipher do
  @moduledoc """
  Documentation for CaesarCipher.
  plaintext only support 26 words and 10 number: abcdefghijklmnopqrstuvwxyz0123456789,
  and key only support 0 ~ 36, maybe it can bigger, but we will modulo operation.
  """

  defp keygroup do
    ["a","b","c","d","e","f","g","h","i","j","k","l",
     "m","n","o","p","q","r","s","t","u","v","w","x",
     "y","z","0","1","2","3","4","5","6","7","8","9"]
  end

  defp move(s, i) do
    keygroup = keygroup()
    index = Enum.find_index(keygroup, fn x -> x == s end)
    if index == nil do
      s
    else
      Enum.at(keygroup, rem(index + i, 36))
    end
  end

  defp exchange(plaintext, key) do
    plaintext = String.trim(plaintext)
    Enum.map(0..(String.length(plaintext) -1), &String.at(plaintext, &1))
    |> Enum.map(&move(&1, key))
    |> Enum.reduce(fn x, y -> y <> x end)
  end

  @doc """
  encode(string, integer).

  ## Examples

  iex> CaesarCipher.encode("hello", 2)
  "jgnnq"

  """
  def encode(plaintext, key) do
    exchange(plaintext, key)
  end

  @doc """
  decode(string, integer).

  ## Examples

  iex> CaesarCipher.decode("jgnnq", 3)
  "hello"

  """
  def decode(ciphertext, key) do
    exchange(ciphertext, -key)
  end

  @doc """
  cryptanalysis(string).

  ## Examples

  iex> CaesarCipher.cryptanalysis("jgnnq")
  "hello"

  """
  def cryptanalysis(ciphertext) do
    Enum.map(Enum.map(0..35, &exchange(ciphertext, &1)), &IO.puts(" maybe #{&1}"))
  end
end
