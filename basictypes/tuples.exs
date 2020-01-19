~S"""
tuples use curly brackets
tuples can be accessed by indexing 
"""
tuple = {:ok, 1, true, nil}
IO.inspect tuple

# return the tuple size
IO.puts tuple_size(tuple)

# access tuple by index
IO.puts elem(tuple, 2) # its value is true

# put element in a tuple 
IO.inspect put_elem(tuple, 1, "added")
~S"""
like list, tuple is immutable. 
Thus, when we print tuple below, it will return original values
"""
IO.inspect tuple