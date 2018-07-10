use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat, Chat.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
<<<<<<< HEAD

# Configure your database
config :chat, Chat.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "chat_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
