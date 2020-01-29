# elixir makes use of utf8 encoding as its main and default encoing
# get  character's code point by using ?
IO.puts ?a # prints 97
IO.puts ?A # prints 65

# use of string module to split individual characters
IO.inspect String.codepoints("ezkemboi") # return ["e", "z", "k", "e", "m", "b", "o", "i"]
