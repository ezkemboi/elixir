# string in elixir is a binary
IO.puts is_binary("Ezrqn Kemboi") # returns true
# Check string size
IO.puts String.length("ezkemboi") # returns 7
# interpolation of string
IO.puts "String #{:interpolation}"
# check byte size of a string
IO.puts byte_size("ezkemboi") # returns 8
# change string to Uppercase
IO.puts String.upcase("ezkemboi")
# change string to lowercase
IO.puts String.downcase("EZKemboi")
# capitalize string
IO.puts String.capitalize("ezkemboi")
# return grapheme at certain position
IO.puts String.at("ezkemboi", 1) # returns z
IO.puts String.at("ezkemboi", -1) # returns i
# check a certain string if it contains certain content
IO.puts String.contains?("ezkemboi", "kem") # should return true
IO.puts String.contains?("ezkemboi", "emk") # should return false
# check if a string ends with a certain content
IO.puts String.ends_with?("ezkemboi", "oi") # should return true
# return the first character of a string
IO.puts String.first("ezkemboi")
# return last character of a string
IO.puts String.last("ezkemboi")
# check if string 1 and string 2 is equivalent
IO.puts String.equivalent?("ezkemboi", "ezkemboi") # returns true
