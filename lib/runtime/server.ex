defmodule Dictionary.Runtime.Server do
@type t :: pid()

  def start_link do
    Agent.start_link(&Dictionary.Impl.WordList.word_list/0)
  end

  def random_word(pid) do
    Agent.get(pid,&Dictionary.Impl.WordList.random_word/1)

  end

end
