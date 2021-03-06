use Mix.Config

# Configure your database
config :chat, Chat.Repo,
  database: "chat_test",
  hostname: "localhost",
  username: "postgres",
  password: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure the database for GitHub Actions
if System.get_env("GITHUB_ACTIONS") do
  config :chat, Chat.Repo,
    username: "postgres",
    password: "postgres"
end

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat, ChatWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
