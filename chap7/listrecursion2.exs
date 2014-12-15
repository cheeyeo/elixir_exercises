defmodule MyList do
  def mapsum([],_fun), do: 0
  def mapsum([head|tail], fun), do: fun.(head) + mapsum(tail,fun)
end
