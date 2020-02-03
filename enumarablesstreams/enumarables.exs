~S"""
enumarables include maps and lists
Enum have range of functions to transform, 
sort, group, filter and retrieve items
"""
IO.inspect Enum.map([1, 2, 3], fn(x) -> x * x end)  # -> [1, 4, 9]
IO.inspect Enum.map(%{1 => 4, 3 => 4}, fn {x, y} -> x * y end) # -> [4, 12]
# ranges use case
IO.inspect Enum.map(1..4, fn(value) -> value * value end) # -> [1, 4, 9, 16]
IO.puts Enum.reduce(1..5, 0, &+/2) # -> 15

~S"""
enumarables support eager loading
they expect enumarables and return a list back
"""
odd? = &(rem(&1, 2) != 0) 
IO.inspect Enum.filter(1..3, odd?) # get [1, 3]
# NB: check more on filter and use of ?
# eager generates list until result is reached
total_sum = 1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum
IO.puts total_sum
~S"""
above makes use of pipeline of operations
Steps: 
    1. Get the range and multiply @ element by 3 -> list
    2. We keep all odd elements -> list
    3. Then, sum all entries to get the total
"""