~S"""
if you are building an application that require state,
e.g to keep application configuration, you need to parse file
and keep it in memory, then we have to store them inside memory.
We can write process that loop infinitely, maintain state, and 
send and receive messages. 
"""
# program that starts new process that works with key-value store
defmodule State do
    def start_link do
        Task.start_link(fn -> loop(%{}) end) 
    end

    defp loop(map) do
        receive do
            {:get, key, caller} -> 
                send caller, Map.get(map, key)
                loop(map)
            {:put, key, value} ->
                loop(Map.put(map, key, value))
        end
    end
end

start_link_process = State.start_link

IO.inspect start_link_process
# get pid from start_link_process
{:ok, pid} = start_link_process
IO.inspect send pid, {:get, :name, self()}
# working with put
IO.inspect send pid, {:put, :name, "Ezrqn Kemboi"}
# it is also easy to register the pid, giving name and allow everyone know about it
register = Process.register(pid, :kv)
IO.inspect register
IO.inspect send pid, {:get, :name, self()}
# agents module can be used for simple abstraction around state
# description
~S"""
start_link starts a new process that passes loop/1 function
starting with an empty map.
For more details check -> https://elixir-lang.org/getting-started/processes.html
"""
