~S"""
when called, it allow module to inject any code in the current module
e.g importing itself or other modules, defining new fn or current state
Example, when writing tests, we make use of use macro
"""
defmodule AssertTests do
    use ExUnit.Case, async: true

    test "always pass" do
        assert true
    end
end

# automatically use requires module and call with __using__/1 
# GenServer and Supervisor make use of use to populate basic behavior
# not easy to deternine the side effects of use thus import and alias are preferred