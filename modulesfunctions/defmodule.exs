~S"""
to create own modules in elixir, we make use of defmodule
we make use of def macro to create function in that module
"""
defmodule Math do
    def sum(a, b) do
        a + b
    end
end

IO.puts Math.sum(1, 2) # returns 3

~S"""
organizing elixir project
 (1). ebin: - contains the compiled bytecode
 (2). lib: - contains elixir code (.ex files)
 (3): test: - contains tests (.exs files)
"""

# final comments
~S"""
    .ex files are meant to be compiled while
    .exs are used for scripting
"""
