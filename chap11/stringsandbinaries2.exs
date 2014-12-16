defmodule MyString do
  def is_anagram(w1,w2), do: Enum.sort(w1) == Enum.sort(w2)
end

IO.inspect MyString.is_anagram('cat', 'act')                    #=> true
IO.inspect MyString.is_anagram('cat', 'actor')                  #=> false
IO.inspect MyString.is_anagram('incorporates', 'procreations')  #=> true
