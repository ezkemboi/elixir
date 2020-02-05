defmodule MyServer do
    @initial_state %{host: "127.0.0.1", port: 3456}
    def start() do 
        # access constants inside a function
        @initial_state
    end
end

IO.inspect MyServer.start() 
# @tag is used in testing to annotate temporary storage
# its value is read during compilation and not runtime
~S"""
reassigning occurs when attributes are repeated
but, some instance we need accumulation
"""
defmodule Accumulation do
    # accumulation 
    Module.register_attribute __MODULE__, :param, accumulate: true
    @param :foo
    @param :bar
    # with no accumulation
    @noaccumulation :overwritten
    @noaccumulation :printed
    def accumulated() do
        @param
    end

    def not_accumulation() do
        @noaccumulation
    end
end

IO.inspect Accumulation.accumulated() # get results as [:foo, :bar]
IO.inspect Accumulation.not_accumulation() # get :printed

~S"""
functions may be called when defining module attributes
however, when they have the same name as module, they are not be called
"""
defmodule MyApp.Notification do
    @service Application.get_env(:my_app, :email_service)
    @message Application.get_env(:my_app, :welcome_email)
    def welcome(email) do: @service.send_welcome_message(email, @message)
end
