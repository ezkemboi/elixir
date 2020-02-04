# working with agents, better alternative of getting state process
defmodule Agents do
    def start_process() do
        {:ok, pid} = Agent.start_link(fn -> %{} end)
        Agent.update(pid, fn map -> Map.put(map, :name, "Ezrqn Kemboi") end)
        Agent.get(pid, fn map -> Map.get(map, :name) end)
    end
end

# get pid process
IO.inspect Agents.start_process() # return "Ezrqn Kemboi"
~S"""
Elixir provides GenServer for building generic servers
"""
