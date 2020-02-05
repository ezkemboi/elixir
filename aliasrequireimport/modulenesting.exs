defmodule Foo do
    defmodule Bar do

    end
end

~S"""
in the example above, there are two modules
the second one can be accessed as Bar so long as they are in the same
lexical scoping. 
"""
# interpretation or how it can be written
defmodule Elixir.Foo do
    defmodule Elixir.Foo.Bar do

    end

    alias Elixir.Foo.Bar, as: Bar
end