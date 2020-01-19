~S"""
anonymous functions allow to store and pass executable code
as if it were just an integer or string
The function below, takes a and b and returns its addition
"""
add = fn a, b -> a + b end

# add two numbers 
IO.puts add.(1,2) # result is 3

# NB: dot(.) between variable add and paranthesis is required
# So as to invoke anonymous functions
subtract = fn a, b -> a - b end

IO.puts subtract.(2,1) # results is 1

# check if add is a function
IO.puts is_function(add) # returns true

# check if add function expects certain arguments
IO.puts is_function(add, 2) # returns true
IO.puts is_function(add, 1) # returns false

# ~S is called sigil
~S"""
anonymous functions are also closures and such can access
variables that are in scope when the function is defined
"""
double = fn a -> add.(a, a) end

IO.puts double.(2) # return 4

# check of anonymous function double takes how many arguments
IO.puts is_function(double, 1) # returns true
IO.puts is_function(double, 2) # return false