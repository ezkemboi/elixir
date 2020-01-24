~S"""
in circumstance where we want to check different conditions
and find the first one that doesn't return nil or false, cond is used
It is like else-if statement
"""
cond do
    2 + 2 == 5 -> 
        IO.puts "This is not true"
    2 * 2 === 4.0 -> 
        IO.puts "This is false also"
    1 * 1 === 1 -> 
        IO.puts "Will return true"
end
# if all conditions returns false or nil, then CondClauseError will return
# to solve this one, we can add true in the end to get executed
cond do
    2 + 2 == 3 -> 
        "It wont print"
    1 * 2 == 1 -> 
        "It won't print again"
    true -> 
        IO.puts "It will output this phase"
end
# cond considers anything beside false and nil to be true
cond do
    hd([1, "ezkemboi", 3]) -> 
        IO.puts "This is considered true"
end
