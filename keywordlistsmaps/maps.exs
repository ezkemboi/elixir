# a map is created with %{} syntax
map = %{:a => 1, 2 => :b}
IO.inspect map
IO.puts map[:a] # returns 1
IO.inspect map[2] # returns :b
IO.puts map[:c] # returns nil
~S"""
- map allow any value as a key
- map's do not follow any ordering
In contrary to lists, maps are useful in pattern matching
when used in pattern, it will match on a subset of a given value
"""
%{} = %{:x => 1, 2 => :y}
%{:x => x} = %{:x => 1, 2 => :y}
IO.puts x # returns 1
# an empty map matchs all maps
~S"""
variables can be used when accessing, matching and 
adding maps keys
"""
n = 1
map = %{n => :one}
IO.inspect map
IO.inspect map[n] # returns :one
# Map has similar APi to the keyword module
my_map = %{:a => 1, 2 => :b}
get_item = Map.get(my_map, :a) 
get_second_item = Map.get(my_map, 2) 
IO.puts get_item # return 1
IO.inspect get_second_item # returns :b
# adding item to map
add_item_to_map = Map.put(my_map, :c, 3) 
IO.inspect add_item_to_map # returns %{2 => :b, :a => 1, :c => 3}
# convert map to list
list_from_map = Map.to_list(my_map)
IO.inspect list_from_map # return [{2, :b}, {:a, 1}]
~S"""
updating key's vaue of map
"""
new_map = %{:name => "ezkemboi", 2 => true} 
update_value_map = %{new_map | 2 => "Ezrqn Kemboi"}
IO.inspect update_value_map
IO.inspect new_map # updating map creates a new map and does not mutate the existing one
~S"""
when all keys are atoms, 
you can use keyword syntax for accesing atom keys
"""
map = %{name: "Ezrqn Kemboi", username: "ezrqnkemboi"}
IO.inspect map 
# maps syntax for accessing atom keys
IO.inspect map.name
IO.inspect map.username
~S"""
NB: most elixir developers make use of map.field and pattern matching
instead of functions in map module because
it leads to assertive style of programming
RESOURCE: http://blog.plataformatec.com.br/2014/09/writing-assertive-code-with-elixir/
"""
