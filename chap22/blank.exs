defprotocol Blank do
  @doc "Returns true if data is blank"
  @fallback_to_any true
  def blank?(data)
end


defimpl Blank, for: Integer do
  def blank?(_), do: false
end

defimpl Blank, for: List do
  def blank?([]), do: true
  def blank?(_), do: false
end

defimpl Blank, for: Map do
  def blank?(map), do: map_size(map) == 0
end

defimpl Blank, for: Atom do
  def blank?(false), do: true
  def blank?(nil),   do: true
  def blank?(_),     do: false
end

defimpl Blank, for: Any do
  def blank?(_), do: false
end
