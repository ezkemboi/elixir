# double all values in a list 
defmodule Math do
    def double_each([head | tail]) do
        [head * 2 | double_each(tail)]
    end

    def double_each([]) do
        []
    end
end
IO.inspect Math.double_each([1, 2, 3]) # -> [2, 4, 6]
# the above can be done using Enum module has follow
IO.inspect Enum.map([1, 2, 3], fn(x) -> x * 2 end) # -> [2, 4, 6]
~S"""
used recursion to transverse a list, double each element and
return a new list. This process of taking a list and mapping 
it over is known as map algorithm.
***************************************
Recursion and tail call optimization are important part of Elixir
and commonly used to create loops.
**************************************
"""
