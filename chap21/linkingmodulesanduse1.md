In the body of the def macro, there’s a quote block that defines the actual method. It contains:

IO.puts "==> call:   #{Tracer.dump_definition(unquote(name), unquote(args))}"
result = unquote(content)
IO.puts "<== result: #{result}"


Why does the first call to puts have to unquote the values in its interpolation, but the second call does not?


Ans:

The first call requires passing the args name and args into a further function
dump_definition hence they need to be unquoted to get the original representation
back.

The second call has evaulated the content using unquote on the second line and assigned
to the result variable hence there is no need to unquote it again in the IO.puts call
