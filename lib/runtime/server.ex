defmodule Dictionary.Runtime.Server do
@type t :: pid()

@me __MODULE__

  def start_link do
    Agent.start_link(&Dictionary.Impl.WordList.word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me,&Dictionary.Impl.WordList.random_word/1)

  end

end
