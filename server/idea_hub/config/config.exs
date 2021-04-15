# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :idea_hub,
  ecto_repos: [IdeaHub.Repo]

# Configures the endpoint
config :idea_hub, IdeaHubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O9Mxq+LmW6EKuL4gaJ5nZlRjleSr9SZJ7LyDtbqD0nYOEdSfEHoYmeo9qK+KJoa4",
  render_errors: [view: IdeaHubWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: IdeaHub.PubSub,
  live_view: [signing_salt: "JfRVnUv1"]

config :idea_hub, IdeaHub.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
