defmodule MyServer do
    @vsn 2
end
~S"""
in above, we are setting version attributes for the module
@vsn is used for code reloading mechanism to check if module
has been updated or not.
"""
# take a look at reserved attributes in Elixir
~S"""
    1. @moduledoc - provide docs of the current module
    2. @doc - provide docs for the current macro or function
    3. @behaviour - specify OTP or user-defined behavior
    4. @before_compile - provide hook before compilation
"""

defmodule Math do
    @moduledoc """
    Provide math related fucntions
    ## example 
        iex> Math.sum(1, 2)
        3
    """
    @doc """
    calculate the sum of 2 numbers
    """
    def sum(a, b) do
        a + b
    end
    @doc """
    calculate the subtraction of 2 numbers 
    """
    def subtract(a, b) do
        a - b
    end
end

# ExDoc can be used to generate HTML page for docs -> https://github.com/elixir-lang/ex_doc
