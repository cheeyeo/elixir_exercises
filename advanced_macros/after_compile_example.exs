defmodule M do
  @after_compile __MODULE__

  def __after_compile__(env, bytecode) do
    IO.inspect env
    IO.inspect bytecode
  end
end
