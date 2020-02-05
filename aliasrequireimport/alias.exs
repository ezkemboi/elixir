~S"""
to allow reuse, three directives(alias, require & import) 
and macro called use are provided by elixir. 
the 3 are called directives has they have lexial scope
"""
# alias are frequently used to define shortcuts
defmodule Stats do
    alias Math.List, as: List
    # demonstrate lexical scoping
    def plus(a, b) do
        alias Math.List # sets alias automatically to last part of module name
        # code goes here
    end

    def minus(a, b) do
        # code goes here
    end
end
~S"""
NB: the alias inside function plus cannot work in function minus
Alias is also converted into atom on compilation
"""
