~S"""
keyword lists - where elixir regular expression is seperated by comma
"""
# example 1
if true, do: IO.puts 1 + 2
# example 2 using else
# if true, do: IO.puts 1 + 2, else: IO.puts 1 * 2

# equivalent code written in different ways
if true do
    a = 1 + 2
    IO.puts a + 10 # returns 13
end

if true, do: (
    a = 1 + 2 
    IO.puts a + 10
) # returns 13

# when using do/end, they are bound to outermost function call
~S"""
is_number if true do 
    IO.puts 1 + 2
end 
is_number(if true) do
    IO.puts 1 + 2
CompileError will be returned due to undefined function
"""
# how to solve the above error is by 
# adding explicit paranthesis to bind the block of if
is_number(if true do
    IO.puts 10 * 0
end)