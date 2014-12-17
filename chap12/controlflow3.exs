defmodule Test do
  def ok!(param) do
    case param do
      {:ok, data} -> data
      {error_type, reason} -> raise "#{error_type}: #{reason}"
    end
  end
end

stream = Test.ok!(File.open("/etc/passwd"))
IO.puts(IO.stream(stream,:line) |> Enum.take(100))

try do
  Test.ok! File.open("somefile")
rescue x ->
  IO.puts "ERROR"
  IO.puts x.message
end
