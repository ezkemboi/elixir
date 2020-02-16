~S"""
macros is used for meta-programming(writing code that generate code)
Public functions inside module are globally available, but to use macros, 
we need to require them. 
"""

defmodule UsingRequireDemo do
    # allow usage macros inside this module
    require Integer
    def is_no_odd(number) do
        Integer.is_odd(number)
    end
end

IO.inspect UsingRequireDemo.is_no_odd(3) # -> true
IO.inspect UsingRequireDemo.is_no_odd(2) # -> false

# Integer.is_odd/1 is defined in macro to act as guard
