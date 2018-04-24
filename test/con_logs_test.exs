defmodule ConLogsTest do
  use ExUnit.Case
  doctest ConLogs

  test "greets the world" do
    assert ConLogs.hello() == :world
  end
end
