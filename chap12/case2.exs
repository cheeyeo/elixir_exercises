defmodule Bouncer do
  dave = %{name: "Dave", age: 27}

  case dave do
    person = %{age: age} when is_number(age) and age >= 21 ->
      IO.puts "You are cleared to enter FooBar, #{person.name}"
    _ ->
      IO.puts "Sorry no entry"
  end
end
