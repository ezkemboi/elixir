# use power of recursion to sum list of numbers
defmodule Math do
    def sum_list([head | tail], accumulator) do
        sum_list(tail, head + accumulator) 
    end

    def sum_list([], accumulator) do 
        accumulator
    end
end

IO.puts Math.sum_list([1, 2, 3], 0) # -> 6
# see Enum example
IO.puts Enum.reduce([1, 2, 3], 0,  fn(value, accumulator) -> value + accumulator end)
~S"""
the above is done recursively has, the first time 
head is assigned 1 and tail [2, 3]. Then pass tail 
to the to sum_list has the first argument
When the list is empty, it will match the clause which returns the value 0
************************************
The process of taking a list and reducing it down to one value is 
called reduce algorithm and is central in functional programming
************************************
"""
