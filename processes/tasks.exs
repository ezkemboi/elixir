~S"""
tasks is build on top of spawn fn to better 
error reports and introspection
"""
defmodule Tasks do
    def start_task() do
        Task.start fn -> raise "oops" end
    end
end

IO.inspect Tasks.start_task() # {:ok, #PID<0.97.0>}
~S"""
return of :ok enables tasks to be used in supervision tree.
Task also provides function such as Task.async/1 and Task.await/1
and functionality to ease distribution
"""
