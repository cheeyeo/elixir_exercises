defmodule M do
  @compile {:inline, myfunc: 1}

  def myfunc(arg) do
    to_string(arg)
  end
end

defmodule N do
  import M
  IO.puts myfunc("test")
end
