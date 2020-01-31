~S"""
we can have maps inside maps, or keywords lists inside maps
can manipulate nested data strcuture using
put_in/2, update_in/2 and other macros 
"""
users = [
    ezkemboi: %{name: "Ezrqn Kemboi", age: 12, languages: ["Javascript", "Erlang", "Elixir"]},
    ndirangu: %{name: "Ronald Ndirangu", age: 11, languages: ["Javascript", "Python", "c"]}
]
IO.inspect users 
IO.inspect users[:ezkemboi].languages # returns ["Javascript", "Erlang", "Elixir"]
IO.inspect users[:ndirangu].age # returns 11
# use of put_in macro
users = put_in users[:ezkemboi].age, 20
IO.inspect users 
# update_in macro usage - it allow pass a function that control how data chnages
updated_users = update_in users[:ndirangu].languages, 
                fn languages -> 
                    List.delete(languages, "c") 
                end
IO.inspect updated_users # should have removed c from ndirangu languages
