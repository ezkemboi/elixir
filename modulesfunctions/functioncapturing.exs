~S"""
capture operator allow named functions to be assigned 
to variables and passed as arguments in the same way 
we assigned, invoke and pass anonymous functions
"""
fun = &Math.zero?/1
# below, fun is regarded as function
(&is_function/1).(fun)
# capture syntax can be used as shortcut for creating function
capture_fn = &(&1 + 1)
IO.puts capture_fn.(2) # prints 3
# second example
say_my_name = &"My name is: #{&1}"
IO.puts say_my_name.("Ezrqn Kemboi")
# &1 represents the first argument passed to the function
~S"""
capturing function from module, we make use of
&Module.function()
"""
example = &List.flatten(&1, &2) # fn(list, tail) -> List.flatten(list, tail) end
IO.inspect example.([1, [[2], 3]], [4, 5]) # returns [1, 2, 3, 4, 5]
