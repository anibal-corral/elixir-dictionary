defmodule Dictionary do
  # API
  # @opaque t :: Dictionary.Impl.WordList.t()

  alias Dictionary.Runtime.Server
  @opaque t :: Server.t

@spec start_link :: {:ok, t}
defdelegate start_link, to:  Server
defdelegate random_word(word_list), to: Server

  # def start() do
  # random_word(word_list)
  # end



  # @spec random_word(any) :: any
  # def random_word(word_list) do
  #   word_list |>
  #   Enum.random()
  #  end
end
