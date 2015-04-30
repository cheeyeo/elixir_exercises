defmodule My do
  defmacro myunless(condition, do: block) do
    quote do
      if !(unquote(condition)), do: unquote(block)
    end
  end
end

defmodule Test do
  require My

  My.myunless 1==2, do: IO.puts "This works!"
end
