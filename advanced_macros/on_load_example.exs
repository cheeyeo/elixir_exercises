defmodule M do
  @on_load :load_check

  def load_check do
    if some_condition() do
      :ok
    else
      nil
    end
  end

  def some_condition do
    false
  end
end
