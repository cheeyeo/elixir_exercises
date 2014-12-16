defmodule MyList do
  def span(from,to), do: Enum.to_list(from..to)
  def primes_up_to(n) do
    range = span(2,n)
    range -- (for x <- range, y <- range, x <=y, x*y <=n, do: x * y)
  end
end


