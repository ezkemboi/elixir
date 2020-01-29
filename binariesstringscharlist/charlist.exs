# list of code points
# char list can be created with single-quoted literals
IO.inspect 'hello' # prints 'hello'
IO.puts is_list('hello') # prints true
IO.puts List.first('hello') # print 104

# charlist contains the codepoints of character between single-quotes
# conversion of charlist to string and from string to charlist
IO.inspect to_charlist "Ezkemboi"
IO.inspect to_string :ezkemboi
IO.inspect to_string 1
# to_string are polymophic and can convert atoms, integers to strings

~S"""
string(binary) concatanation uses <> operator but
charlist uses list concatanation operator ++
"""
IO.inspect 'Ezrqn' ++ 'Kemboi'
# string concatanation
IO.inspect "ez" <> "kemboi"
