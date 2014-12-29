IO.puts "Preparing dictionary..."
words = File.stream!("/usr/share/dict/words", [:read, :utf8], :line)
        |> Enum.map(fn line ->
          line
          |> String.rstrip
          |> String.downcase
        end)
words_by_size = for {len, group} <- Enum.group_by(words, &byte_size/1), into: Map.new do
  {len, Enum.into(group, HashSet.new)}
end

IO.puts "Searching..."
Enum.each words, fn word ->
  encrypted = Caesar.rot13(word)
  if HashSet.member? words_by_size[byte_size(word)], encrypted do
    IO.puts "rot13(#{word}) == #{encrypted}"
  end
end
