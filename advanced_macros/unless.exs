defmodule Unless do
  def fun_unless(clause, expression) do
    if(!clause, do: expression)
  end

  defmacro macro_unless(clause, expression) do
    IO.inspect expression

    quote do
      if(!unquote(clause), do: unquote(expression))
    end
  end
end

# Unless.fun_unless(true, IO.puts("this should not be printed"))
# Unless.macro_unless(true, IO.puts("this should not be printed"))
