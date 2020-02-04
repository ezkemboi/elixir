~S"""
they are majorly used when we want failure from another process 
to propagate in another one. spawn_link/1
"""
defmodule Links do
    def get_links() do
        self()
        spawn_link fn -> raise "oops" end
    end
end

IO.inspect Links.get_links()
~S"""
since process are linked, we see message saying the parent process, 
which is shell process receive an EXITY signal. 
manual linking can be done using process.link/1 
Process and link are important when building fault-tolerant systems.
failure in one process does not corrupt another process, and we make use of 
links to act as supervisors, in case of failure, it starts a new process.
spawn/1 and spawn_links/1 have abstractions coming with them
"""