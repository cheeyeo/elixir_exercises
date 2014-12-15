defmodule MyList do
  def max([]), do: []

  def max([x]), do: x

  # using erlang built in lists max function
  # def max(list), do: :lists.max(list)

  # or using Kernel.max in elixir
  # def max([head|tail]), do: Kernel.max(head, max(tail))

  def max([head|tail]), do: _max(head,tail)

  defp _max(x,[]), do: x
  defp _max(x,[head|tail]) when x < head, do: _max(head,tail)
  defp _max(x, [_|tail]), do: _max(x,tail)
end
