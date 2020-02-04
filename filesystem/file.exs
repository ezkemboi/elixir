~S"""
contains functions to help open files and IO devices.
NB: by default, files are opened in binary mode, thus
require use of IO.binread/2 and IO.binwrite/2 fn's
"""
defmodule FileModule do
    def open_and_write_file() do
        {:ok, file} = File.open("name", [:write])
        write_to_file(file)
    end

    def write_to_file(file) do
        IO.binwrite(file, "Ezrqn Kemboi")
        File.close(file)
    end

    def read_file(name) do
        # use trailing bang (!) - returns content and not tuple
        # But, when expecting file, bang variations is good
        File.read!(name)
    end

    def remove_file(name) do
        File.rm_rf!(name)
    end
end

# write file
IO.inspect FileModule.open_and_write_file()
# read file
IO.inspect FileModule.read_file("name")
# remove file
IO.inspect FileModule.remove_file("name")
~S"""
other File function are:
    1. File.mkdir/1 - to make directories
    2. File.mkdir_p/1 - create directories and all their parent chain
    3. File.cp_r/2 - copy files and directories recursively and contents also
    4. File.rm_rf/1 - remove files and directories recursively and contents also
"""
