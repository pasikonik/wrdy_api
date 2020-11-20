# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wrdy_api,
  ecto_repos: [WrdyApi.Repo]

# Configures the endpoint
config :wrdy_api, WrdyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WGFXF6+bNXwXCOJCl2ySjsNzaGb4GBZZZCUWBj14xoK5raUD3KxcNtAqBjuZB61d",
  render_errors: [view: WrdyApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: WrdyApi.PubSub,
  live_view: [signing_salt: "OiwpIuqo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
