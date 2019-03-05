defmodule CaesarCipher do
  @moduledoc """
  Documentation for CaesarCipher.
  plaintext only support 26 words and 10 number: abcdefghijklmnopqrstuvwxyz0123456789,
  and key only support 0 ~ 36, maybe it can bigger, but we will modulo operation.
  """

  #textgroup = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"]

  defp move(s, i) do
    #String.downcase(s)
    IO.puts("#{s} #{i}")
    s
  end

  @doc """
  encode(string, integer).

  ## Examples

  iex> CaesarCipher.encode("hello", 2)
  "jgnnq"

  """
  def encode(plaintext, key) do
    plaintext = String.trim(plaintext)
    Enum.map(0..(String.length(plaintext) -1), &String.at(plaintext, &1))
    |> Enum.map(&move(&1, key))
    |> Enum.reduce(fn x, y -> y <> x end)
  end

  @doc """
  decode(string, integer).

  ## Examples

  iex> CaesarCipher.decode("jgnnq", 3)
  "hello"

  """
  def decode(ciphertext, key) do
  end

  @doc """
  cryptanalysis(string).

  ## Examples

  iex> CaesarCipher.cryptanalysis("jgnnq")
  "hello"

  """
  def cryptanalysis(ciphertext) do
  end
end
