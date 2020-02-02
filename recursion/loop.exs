~S"""
functional languages makes use of recursion
a function is called recursively until a condition
is reached that stops recursive action from continuing
"""
defmodule Recursion do
    def print_multiple_times(msg, n) when n <= 1 do
        IO.puts msg
    end

    def print_multiple_times(msg, n) do
        IO.puts msg
        print_multiple_times(msg, n-1)
    end
end

IO.puts Recursion.print_multiple_times("Ezrqn Kemboi", 3) # returns name 3 times
~S"""
similar to case, function may have many clauses
we define print_multiple_times/2, so that no matter what number is passed
as second argument, it either triggers the first definition(base case) 
or trigger second definition, which ensure we get one step closer to base case 
"""
