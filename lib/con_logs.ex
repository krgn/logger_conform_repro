defmodule ConLogs do
  @moduledoc """
  Documentation for ConLogs.
  """

  use Application
  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      worker(Periodical, [])
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
