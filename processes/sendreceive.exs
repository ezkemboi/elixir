~S"""
we can send message to a process using 
send/2 or receive using receive/1
receive message stored in mailbox -> 
"""
defmodule Message do
    def sent_message() do 
      send self(), {:name, "Ezrqn Kemboi"}
    end

    def get_message() do
        receive do 
            {:name, msg} -> msg
            {:other, _msg} -> "Wont match"
        # setting timeout
        after 
            1_000 -> "No message was found"
        end
    end
    # sending message through process
    def get_message_through_process() do
        parent = self()
        spawn fn -> send(parent, {:name, self()}) end
        receive do
            {:name, pid} -> "Got message from #{inspect pid}"
        end
    end
end

# call module function to return results
IO.inspect Message.sent_message()
IO.inspect Message.get_message()
~S"""
receive goes to the current process mailbox searching for
message matching. 
It supports guards and many clauses
"""
IO.inspect Message.get_message_through_process()
# check on flush/0 
