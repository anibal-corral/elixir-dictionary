defmodule Dictionary.Impl.WordList do
  @type t :: list(String)


  # IMPL
  # @word_list "assests/words.txt"  |> File.read!() |> String.split(~r/\n/, trim: true)
  @spec word_list() :: t
  def word_list do
    "assests/words.txt"  |> File.read!() |> String.split(~r/\n/, trim: true)
  end
  @spec random_word(t) :: String.t
  def random_word(word_list) do
    word_list |>
    Enum.random()
   end


end
