defmodule MyString do
  def each(string, func), do: _each(String.next_codepoint(string), func)

  defp _each({codepoint,rest}, func) do
    func.(codepoint)
    _each(String.next_codepoint(rest), func)
  end

  defp _each(nil, _), do: []
end


MyString.each "∂og", fn x -> IO.puts x end
