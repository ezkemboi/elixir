~S"""
used whenever we want to access functions or macros from 
other modules without using fully qualified name.
NB: only public functions can be imported
"""
defmodule Math do
    def duplicate_items() do
        # NB: import also has lexical scoping
        import List, only: [duplicate: 2]
        duplicate("ok", 3)
    end
end

IO.inspect Math.duplicate_items()

# NB: importing module automatically requires it
