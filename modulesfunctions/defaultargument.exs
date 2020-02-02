# named functions support default argument
defmodule Concat do
    # seperate with spacing as default
    def join(firstname, lastname, sep \\ " ") do
        firstname <> sep <> lastname
    end
end

IO.puts Concat.join("Ezrqn", "Kemboi") # prints Ezrqn Kemboi
IO.puts Concat.join("Ezrqn", "Kemboi", "_") # prints Ezrqn_Kemboi
IO.puts Concat.join("ez", "kemboi", "") # returns ezkemboi

# default value will only be avaluated when the function is called

~S"""
if a function with default values has multiple clauses
it is required to create function head(without an actual body)
for declaring defaults 
"""
defmodule ConcatMultipleClause do
    def join(firstname, lastname \\ nil, sep \\ " ")

    def join(firstname, lastname, _sep) when is_nil(lastname) do 
        firstname
    end

    def join(firstname, lastname, sep) do
        firstname <> sep <> lastname
    end
end

IO.puts ConcatMultipleClause.join("Ezrqn", "Kemboi") # returns Ezrqn Kemboi
IO.puts ConcatMultipleClause.join("Ezrqn", "Kemboi", "_") # return Ezrqn_Kemboi
IO.puts ConcatMultipleClause.join("Ezrqn") # return Ezrqn

# when using default arguments, avoid overlapping function definition
