defmodule My do
  defmacro mydef(name) do
    quote bind_quoted: [name: name] do
      def unquote(name)(), do: unquote(name)
    end
  end
end

defmodule Test do
  require My

  My.mydef(:some_name)

  [ :fred, :bert ] |> Enum.each(&My.mydef(&1))
end

IO.inspect Test.some_name

IO.puts Test.fred
IO.puts Test.bert
