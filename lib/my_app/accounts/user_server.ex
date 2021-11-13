defmodule MyApp.UserServer do
  use GenServer

  alias MyApp.Accounts

  def start_link(_arg), do: GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  def get_user(user_id), do: GenServer.call(__MODULE__, {:get_user, user_id})

  @impl GenServer
  def init(_arg), do: {:ok, %{}}

  @impl GenServer
  def handle_call({:get_user, user_id}, _from, state), do: {:reply, Accounts.get_user!(user_id), state}
end
