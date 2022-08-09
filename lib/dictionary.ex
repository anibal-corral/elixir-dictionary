defmodule Dictionary do
  @moduledoc """
  Documentation for `Dictionary`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello()
      :world

  """
  def word_list do
  "assests/words.txt" |> File.read!() |> String.split(~r/\n/, trim: true)
    # words = File.read!("assests/words.txt")
    # String.split(words, ~r/\n/, trim: true)
  end
  def random_word do
  Enum.random(word_list())
  end
end
