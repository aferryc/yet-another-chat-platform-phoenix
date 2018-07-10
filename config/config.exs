# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chat, Chat.Endpoint,
  url: [host: "localhost"],
<<<<<<< HEAD
  root: Path.dirname(__DIR__),
  secret_key_base: "SVtuyzopjD0Eh2/owkHd5t2nl0EwkTwpTCXbCiQQmRoGe2gjZtXSRA5AlV8ok71O",
  render_errors: [accepts: ~w(html json)],
=======
  root: Path.expand("..", __DIR__),
  secret_key_base: "/RjKJmMO6raXPRTq63qTqid1x6lVKTOP+FTxZHfX6Ogd+1xYmH6eZZFhBu1CIwtg",
  debug_errors: false,
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
  pubsub: [name: Chat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
<<<<<<< HEAD

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
