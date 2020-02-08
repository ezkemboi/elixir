~S"""
structs are extension of maps that provide compile-time
checks and default values
use defstruct construct
"""
defmodule User do
    defstruct name: "Ezrqn", age: 11 # contains default values
end

# most of the time, we get compile error

# access and updating structs
new_user = %User{}
IO.inspect new_user.name

# when using update syntax (|), the VM is aware that no new keys 
# will be added to structs, thus share memory
another_user = %User{new_user | name: "Kemboi"}
IO.puts another_user
# structs are bare maps beneath
new_user.__structs__  # -> User
# you can neither enumarate or access structs
~S"""
they work with maps functions
"""
another_user = Map.put(%User{}, name: "Kemboi")
newest_user = Map.merge(another_user, %{name: "Ezrqn"})
# structs & protocols are import feature for polymorphism
~S"""
if default values are not provided, it assumes it is nil,
Also, we can enforce certain keys when creating structs
"""
defmodule Make do
    @enforce_keys [:make]
    defstruct [:model, :make]
    # it means that :make is a required item
end
