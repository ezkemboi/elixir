# list uses square brackets
IO.inspect [0, 1, "ke", true, nil]
# check the length of a list
mylist = [1, 2, true, nil]
IO.puts length(mylist)
# adding list 
secondlist = ["Ezrqn Kemboi", false]
addedlist = mylist ++ secondlist
IO.inspect addedlist
# subtract list
subtractitems = [false, 2]
subtractedlist = addedlist -- subtractitems
IO.inspect subtractedlist

~S"""
List operators never modify the existing list rather it create a new list
Therefore, there is no mutation rather data transformation
"""

# return head and tail of list
IO.puts hd(mylist)
~S"""
use inspect when returning tail as it will return a list
head return the first grapheme in a list
tail return list of the remaining grapheme
Remember that head and tail of an empty list returns an argument error
"""
IO.inspect tl(mylist)

# To keep in mind
~S"""
Single quoted and double quoted representation is not equivalent in elixir
"""