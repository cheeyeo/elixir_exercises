defmodule MyList do
  def flatten(list), do: do_flatten(list,[])

  defp do_flatten([h|t],tail) when is_list(h) do
    do_flatten(h, do_flatten(t,tail))
  end

  defp do_flatten([h|t], tail) do
    [h|do_flatten(t, tail)]
  end

  defp do_flatten([], tail) do
    tail
  end
end
