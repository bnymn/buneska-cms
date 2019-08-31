# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :buneska_cms,
  ecto_repos: [BuneskaCms.Repo]

# Configures the endpoint
config :buneska_cms, BuneskaCmsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h0i2Z6+3Gz0kRyD6/y0BX6Dzqu7QEGywtOgpZ7I29V1tOKjDzlLBgRw5JbSoyKkm",
  render_errors: [view: BuneskaCmsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BuneskaCms.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :buneska_cms, :pow,
  user: BuneskaCms.Users.User,
  repo: BuneskaCms.Repo,
  web_module: BuneskaCmsWeb
