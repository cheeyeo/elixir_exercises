defmodule H do
  def on_def(_env, kind, name, args, guards, body) do
    IO.puts "Defining #{kind} named #{name} with args:"
    IO.inspect args
    IO.puts "and guards"
    IO.inspect guards
    IO.puts "and body"
    IO.puts Macro.to_string(body)
  end
end

defmodule M do
  @on_definition {H, :on_def}

  def hello(arg) when is_binary(arg) or is_list(arg) do
    "Hello" <> to_string(arg)
  end

  def hello(_) do
    :ok
  end
end
