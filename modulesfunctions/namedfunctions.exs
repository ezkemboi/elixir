~S"""
inside module, def/2 define functions while
defp/2 defines private functions
def/2 can be invoked from any other module but
defp/2 can be invoked locally
"""
defmodule MathCal do
    def sum(a, b) do
        do_sum(a, b)
    end

    defp do_sum(a, b) do
        a + b
    end
end 

IO.puts MathCal.sum(1, 2) # returns 3
# IO.puts MathCal.do_sum(1, 2) # undefinedFunctionError

~S"""
function declarations also supports guards and multiple clauses
if there are several clauses, elixir tries to check all of them 
until it finds the one that matches
"""
defmodule MathWithClause do
    # use of trailing question mark shows that the function returns boolean
    def zero?(0) do
        true
    end

    def zero?(x) when is_integer(x) do
        false
    end
end

IO.puts MathWithClause.zero?(0) # returns true
IO.puts MathWithClause.zero?(2) # returns false
# IO.puts MathWithClause.zero?(0.0) # returns FunctionClauseError

~S"""
like constucts such as if, named functions do support
both do: and do/end block syntax 
"""
defmodule MathBlockSyntax do
    # only use do: for one line but multiple line use do/end
    def zero?(0), do: true
    def zero?(x) when is_integer(x), do: false
end

IO.puts MathBlockSyntax.zero?(0) # return true
IO.puts MathBlockSyntax.zero?(1) # return false
