~S"""
plug is meant as foundation for building web libraries 
and frameworks in Elixir
"""
defmodule MyPlug do
    use Plug.Builder

    plug :set_header
    plug :send_ok

    def set_header(conn, _opts) do
        put_resp_header(conn, "x-header", "set")
    end

    def send_ok(conn, _opts) do
        send_resp(conn, 200, "ok")
    end
end

IO.puts "Running MyPlug with cowboy on http://localhost:4000"
Plug.Adapters.Cowboy.http MyPlug, []
# revisited in meta-programming (Advanced Elixir concepts)
# @tag can be used in unittests to filter tests -> 