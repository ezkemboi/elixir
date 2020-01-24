# quick check for single condition
if true do
    IO.puts "This works"
end
# unless 
unless true do
    IO.puts "This will be nil"
end
# they do also support else statements
unless true do
    IO.puts "This won't return"
else 
    IO.puts "This one is printed"
end
~S"""
if and unless are implemented as macros
"""