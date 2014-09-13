defmodule Times do
  defmacro times_n(n) do
    func = String.to_atom("times_#{n}")

    quote do
      def unquote(func)(arg) do
        arg * unquote(n)
      end
    end
  end
end

defmodule Test do
  require Times

  Times.times_n(3)
  Times.times_n(4)
end


IO.puts Test.times_3(4)
IO.puts Test.times_4(5)
