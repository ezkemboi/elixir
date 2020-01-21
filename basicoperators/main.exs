
~S"""
contains basic operators in elixir
"""
# list manipulation
first_list = [true, 1, "first"]
second_list = ["second", :atom]
third_list = [1]
IO.inspect first_list ++ second_list # add items to an existing list
IO.inspect first_list -- third_list # remove items from list

# Concatenation
IO.puts String.capitalize("mail" <> "box")

# or, and and not operators
IO.puts true and false # returns false
IO.puts true and true # returns true
IO.puts false or is_atom(:ezkemboi) # returns true
# providing non-boolean will raise exceptions
# IO.puts 1 or true # BadBooleanError  # I commented this to allow other code to work

~S"""
or, and are short circuit operators.
Only execute the right side if the left side
is not enough to determine results
"""
IO.puts false and raise("This error will never be raised")  # returns false

~S"""
Beside above boolean operators, 
elixir provides  ||, && and !, 
which accepts arguments of any type
For these operators, all values will evaluate to true except false and nil
"""
IO.puts 1 || true # returns 1
IO.puts false || 11 # returns 11
IO.puts nil && 13 # returns nil
IO.puts true && 17 # returns 17
IO.puts !true # returns false
IO.puts !1 # returns false
IO.puts !nil # returns true

# comparison operators
IO.puts 1 == 1 # returns true
IO.puts 1 != 2 # returns true
IO.puts 1 < 2 # returns true
IO.puts 1 < :atom # returns true -> {pragmatism} for sorting algorithms
IO.puts 1 === 1.0 # returns false
# using === is very strict when comparing integers and floats
# number < atom < reference < function < port < pid < tuple < map < list < bitstring