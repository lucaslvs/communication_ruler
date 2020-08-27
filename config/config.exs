# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :communication_ruler,
  ecto_repos: [CommunicationRuler.Repo]

# Configures the endpoint
config :communication_ruler, CommunicationRulerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V0OIfds1AcPC8VO//fKrtaQD6SL+iC/z+vniNU3/KLno6G/odGb1R187wFwrVy4I",
  render_errors: [view: CommunicationRulerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CommunicationRuler.PubSub,
  live_view: [signing_salt: "F8q/W7bO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
