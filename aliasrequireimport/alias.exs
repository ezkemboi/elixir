~S"""
to allow reuse, three directives(alias, require & import) 
and macro called use are provided by elixir. 
the 3 are called directives has they have lexial scope
"""

# alias are frequently used to define shortcuts -> reduce typing
# rename a module in your directory as seen in MyList below
defmodule Stats do
    alias Math.List, as: MyList
    # demonstrate lexical scoping
    def plus(a, b) do
        alias Math.List # sets alias automatically to last part of module name
        # code goes here
        List.function...
        # still we can use MyList has it is still in the scope
        MyList.function...
    end

    def minus(a, b) do
        # code goes here
        MyList.function...
    end
end
~S"""
NB: the alias inside function plus cannot work in function minus
Alias is also converted into atom on compilation
"""
