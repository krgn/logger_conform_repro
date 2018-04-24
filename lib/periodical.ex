defmodule Periodical do
  use GenServer
  require Logger

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    schedule()
    {:ok, 0}
  end

  def handle_info(:tick, state) when is_number(state) do
    schedule()
    Logger.debug(fn -> "Current count: #{inspect(state)}" end)
    {:noreply, state + 1}
  end

  defp schedule() do
    Process.send_after(self(), :tick, 1_000)
  end
end
