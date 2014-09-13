defmodule Scope do
  defmacro update_local(val) do
    local = "some value"
    result = quote do
      local = unquote(val)
      IO.puts "End of macro body, local = #{local}"
    end

    IO.puts "In macro definition, local = #{local}"
    result
  end
end

defmodule Test do
  require Scope

  local = 123
  Scope.update_local("cat")
  IO.puts "On return, local = #{local}"
end

# The macro definition has both its own scope and a scope during execution of the quoted macro body. Both are distinct to the scope within the Test module.

# The upshot of this is that macros will not clobber each others variables, or the variables of modules and func- tions that use them.
