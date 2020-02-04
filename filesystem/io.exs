~S"""
IO module is main mechanism of reading and writing to standard
input/output(:stdio), standard error(:stderr), file, & other IO devices.
"""
defmodule FileSystem do
    def puts() do
        IO.puts "Ezrqn Kemboi"
    end

    def gets() do
        IO.gets "Respond Yes or No: \n"
    end

    def write_error() do
        IO.puts(:stderr, "Error occurred")
    end
end

IO.inspect FileSystem.puts() 
IO.inspect FileSystem.gets() # will prompt for input
IO.inspect FileSystem.write_error() 