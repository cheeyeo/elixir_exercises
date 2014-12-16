defmodule MyString do
  def ascii_printable(str), do: Enum.all?(str, fn x -> x in ?\s..?~ end)
end

IO.inspect MyString.ascii_printable('cat!')
IO.inspect MyString.ascii_printable('∂x/∂y')
