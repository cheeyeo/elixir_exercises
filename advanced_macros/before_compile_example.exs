defmodule A do
  defmacro __before_compile__(_env) do
    quote do
      def hello, do: "world"
    end
  end
end

defmodule B do
  @before_compile A
end

IO.puts B.hello

