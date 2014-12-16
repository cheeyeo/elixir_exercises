defmodule MyList do
  def all?(list), do: all?(list, fn x -> !!x end)

  def all?([],_fun), do: true

  def all?([head|tail],fun) do
    if fun.(head) do
      all?(tail,fun)
    else
      false
    end
  end

  def each([],_fun), do: :ok
  def each([head|tail], fun) do
    fun.(head)
    each(tail,fun)
  end

  def filter([],_fun), do: []
  def filter([head|tail], fun) do
    if fun.(head) do
      [head | filter(tail,fun)]
    else
      filter(tail,fun)
    end
  end

  def split([], _count), do: { [], [] }
  def split(collection, count) when count < 0 do
    split(collection, max(0, length(collection) + count))
  end

  def split(collection, 0), do: { [], collection }
  def split([head|tail], count) do
    { left, right } = split(tail, count - 1)
    { [head|left], right }
  end

  def take(collection, count) do
    { left, right } = split(collection, count)
    if count < 0 do
      right
    else
      left
    end
  end
end
