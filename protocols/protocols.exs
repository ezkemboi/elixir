~S"""
mechanisms to achieve polymorphism
although sometimes we make use of functions to make computation such as .length
generic size protocol can be used
"""
defprotocol Size for: BiString do
  @doc """
  calculating the size(and not the length)
  of a data structure
  """
  def size(string), do: byte_size(string)
end

defprotocol Size do
  def size(map), do: map_size(map)
end

defprotocol Size do
  def size(tuple), do: tuple_size(tuple)
end

~S"""
data type to implement protocols include:
  1. Atom
  2. BitString
  3. Float
  4. Function
  5. Integer
  6. List
  7. Map
  8. PID
  9. Port
  10. Reference
  11. Tuple
"""
# you can come up with own semantics -> to build robust data type
defmodule User do
  defstruct [:name, :age]
end

defimpl Size, for: User do
  def size(_size), do: 2
end

# deriving defining protocols implementation can be repetitive and tedious
# use of Any
defimpl Size, for: Any do
  def size(_size), do: 0
end

# now, we can tell the other struct to derive from Size
defmodule OtherUser do
  @derive [Size]
  defstruct [:name, :age]
end

# fallback Any -> used when an implementation cannot be found
defprotocol Size do
  @fallback_to_any true
  def size(data)
end

# built-in protocols 
Enum.map([1,2,3], fn(x) -> x * 2 end)
String.Chars("kl")

# check protocol consolidation
