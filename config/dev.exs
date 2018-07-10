use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :chat, Chat.Endpoint,
<<<<<<< HEAD
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin"]]
=======
  http: [port: System.get_env("PORT") || 4000],
  debug_errors: true,
  cache_static_lookup: false,
  code_reloader: true,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch"]]
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24

# Watch static and templates for browser reloading.
config :chat, Chat.Endpoint,
  live_reload: [
    patterns: [
<<<<<<< HEAD
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
=======
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"
<<<<<<< HEAD

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :chat, Chat.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "chat_dev",
  hostname: "localhost",
  pool_size: 10
=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
