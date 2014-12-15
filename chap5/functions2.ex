fizzbuzz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,n -> n
end

IO.puts fizzbuzz.(0,0,1)
IO.puts fizzbuzz.(0,1,1)
IO.puts fizzbuzz.(1,0,1)
IO.puts fizzbuzz.(1,2,3)

fizz_num = fn n ->
  fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts "\n\n"
IO.puts "FizzBuzz with num:"
Enum.each 10..16, &IO.puts(fizz_num.(&1))

