defmodule Dictionary do
  # API
  @opaque t :: Dictionary.Impl.WordList.t()

@spec start() :: t
defdelegate start, to:  Dictionary.Impl.WordList, as: :word_list
defdelegate random_word(word_list), to: Dictionary.Impl.WordList

  # def start() do
  # random_word(word_list)
  # end



  # @spec random_word(any) :: any
  # def random_word(word_list) do
  #   word_list |>
  #   Enum.random()
  #  end
end
