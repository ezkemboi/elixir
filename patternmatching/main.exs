~S"""
use of = operator (match) and how it is use in data structures
pin operator ^ used to access previously bound values
"""
x = 1
IO.puts x # prints 1
IO.puts 1 = x # prints 1
~S"""
IO.puts 2 = x # will return no match right side
IO.puts 1 = unknown # will return undefined function
Elixir assumes that we are trying to return function unknown (not defined)
"""
# pattern mathching used for destructuring complex data types
{x, y, z} = {:ezkemboi, "Ezqrn Kemboi", 24}
IO.puts x # prints :ezkemboi
IO.puts y # prints Ezrqn Kemboi
IO.puts z # prints 24

~S"""
pattern matching will not occur if there is no right sizes of tuples
{x, y} = {:ezkemboi, "Ezqrn Kemboi", 24} # MatchError
MatchError also occurs when comparing different data types
{x, y, z} = [:ezkemboi, "Ezqrn Kemboi", 24]
"""
# pattern matching for lists
[a, b, c] = [:ezkemboi, "Ezqrn Kemboi", 24]
IO.puts a # prints :ezkemboi
IO.puts b # prints "Ezrqn Kemboi"
IO.puts c # prints 24

# list pattern mathcing head and tail
[head | tail] = [:ezkemboi, "Ezqrn Kemboi", 24]
IO.puts head # prints :ezkemboi
IO.inspect tail # prints ["Ezqrn Kemboi", 24]

# prepending items to list using head and tail
list_of_items = [:ezkemboi, "Ezqrn Kemboi", 24]
item_to_add = "Software Engineer"
prepended_list = [item_to_add | list_of_items]
IO.inspect prepended_list # prints ["Software Engineer", :ezkemboi, "Ezqrn Kemboi", 24]
~S"""
pattern matching allows developers to easily destructure data types
such as tuples and lists
"""
