# case allow us to find a value against many pattern matching until we find matching one
case {1, 2, 3} do
    {4, 5, 6} -> 
        IO.puts "This clause wont match"
    {1, x, 3} -> 
        IO.puts "This clause will match and bind x to 2. x value = #{x}"
    _ -> 
        IO.puts "This clause will match any value"
end

~S"""
if you need pattern match against an existing variable,
you need to use pin operator(^)
"""
x = 1

case 10 do
    ^x -> 
        IO.puts "It won't match"
    _ -> 
        IO.puts "It will match"
end

# clauses allow extra conditions to be specified via guards
case {1, 2, 3} do
    {1, x, 3} when x < 0 -> 
        IO.puts "It will not match"
    {1, x, 3} when x > 0 -> 
        IO.puts "It will match since x is 2"
    _ -> 
        IO.puts "It would match, if guard conditions were not specified"
end

# Guards don't leak, they just return guard fail
# case 1 do
#     x when hd(x) -> 
#         IO.puts "Won't match"
#     x -> 
#         "Got #{x}"
# end

# if none of the clause match, it returns an error
# case :ok do
#     :error -> 
#         IO.puts "Won't match"
#     :ezkemboi ->
#         IO.puts "Won't match this also"
# end

# anonymous functions can also have many clauses and guards
f = fn x, y when x > 0 -> x + y 
        x, y -> x * y 
    end
IO.puts f.(1, 3)
IO.puts f.(-1, 3)

~S"""
The number of @ anonymous function clause need to be the same,
otherwise an error is raised
"""
# f2 = fn x, y when x > 0 -> x + y
#         x, y, z -> x * y * z
#     end
# IO.puts f2.(1, 3)
# IO.puts f2.(-1, 3) 
~S"""
The commented code returns CompileError
Cannot mix clauses with different arities in anonymous functions
"""
