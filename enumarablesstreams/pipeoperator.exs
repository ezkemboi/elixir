~S"""
|> is called pipe operator
it takes output of an expression from the left side
and pass as first argument to the function call on the right
"""
total_sum = 1..100 |> Enum.map(&(&1 * 2)) |> Enum.sum # -> 10100
IO.puts total_sum
# the code above can be simplified as
total_sum = Enum.sum(Enum.map(1..100, &(&1 * 2))) # -> 10100
IO.puts total_sum
