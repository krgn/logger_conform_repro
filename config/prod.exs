use Mix.Config

config :logger,
  level: :info,
  backends: [:console, {Logger.Backends.Gelf, :gelf_logger}]

config :logger, :gelf_logger,
  host: "your-host-here.com",
  port: 12201,
  tags: [environment: "prod"]
