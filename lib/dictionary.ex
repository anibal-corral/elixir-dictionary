defmodule Dictionary do
  @moduledoc """
  Documentation for `Dictionary`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello()
      :world
g
  """

  @word_list "assests/words.txt"  |> File.read!() |> String.split(~r/\n/, trim: true)

  def random_word do
  @word_list |>
  Enum.random()
  end
end
