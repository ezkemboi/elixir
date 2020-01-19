# Constants whose values is its own name
IO.puts is_atom(:ezrqn)
IO.puts is_atom(:true)

# Special types of Atoms
IO.puts is_atom(false)
IO.puts is_atom(nil)
IO.puts is_atom(true)
IO.puts is_atom(Ezrqn) # When a constant start with capital it is called Aliases.
