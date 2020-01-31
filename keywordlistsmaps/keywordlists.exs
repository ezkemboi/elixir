~S"""
talks about associative data structure
keyword list && maps
"""
# keyword list has its key of tuple has an atom
list = [{:a, "ezkemboi"}, {:b, 2}]
IO.inspect list
IO.puts list === [a: "ezkemboi", b: 2] # return true
# since keyword list is list, we use all list operations
new_list = [{:c, "Ezrqn Kemboi"}, {:a, true}]
IO.inspect list ++ new_list # return [a: "ezkemboi", b: 2, c: "Ezrqn Kemboi", a: true]
# access a value by will return the first one
IO.inspect (list ++ new_list)[:a] # it will access "ezkemboi" but not true
~S"""
Keyword list characteristics: 
- keys should be atoms
- keys are ordered has specified by developer
- keys can be given more than once
"""
# keyword list are majorly used has default mechanism for passing options to functions
~S"""
when keyword list are last in argument in function
the square brackets are optional
NB: if you want to pass many items or guarantee key-pair associates 
you should use maps instead
"""