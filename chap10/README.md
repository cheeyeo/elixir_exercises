things that can be iterated implement the Enumerable protocol

Enum module

Stream module enumerate collection lazily

Stream is a composable enumerator

To get streams to give results, pass it to a function in Enum module
  e.g. Enum.to_list stream

streams are composable
  can pass stream to another stream


```
Enum.each 1..3, &(IO.puts/1)

[1,2,3] |> Enum.each(&IO.puts/1)

(1..3) |> Enum.each(&IO.puts/1)
```



