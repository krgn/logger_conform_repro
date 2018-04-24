defmodule ConLogs.MixProject do
  use Mix.Project

  def project do
    [
      app: :con_logs,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ConLogs, []},
      extra_applications: [:logger, :poison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:conform, "~> 2.5"},
      {:distillery, "~> 1.5", runtime: false},
      {:gelf_logger, "~> 0.7"}
    ]
  end
end
