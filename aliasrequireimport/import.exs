~S"""
used whenever we want to access functions or macros from 
other modules without using fully qualified name.
NB: only public functions can be imported
"""
# in simple terms -> include module functions
# include/exclude specific functions -> except
defmodule Math do
    # usage of import 
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    def duplicate_items() do
        # NB: import also has lexical scoping
        import List, only: [duplicate: 2]
        duplicate("ok", 3)
    end

    # not advisable to use but for illustration
    def inspect(message) do
        # make use of imported puts without -> IO.puts
        puts "This is kernal functions -> #{message}"
    end
end

IO.inspect Math.duplicate_items()

# NB: importing module automatically requires it
