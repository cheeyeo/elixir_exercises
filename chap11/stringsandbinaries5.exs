defmodule MyString do
  def centre(strings) do
    max_length = strings
      |> Enum.map(&String.length/1)
      |> Enum.max

    strings
      |> Enum.map(&String.to_char_list/1)
      |> Enum.map(&(:string.centre(&1,max_length)))
      |> Enum.map(&IO.puts/1)
  end
end


MyString.centre ~w[cat zebra elephant]
