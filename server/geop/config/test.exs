use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :geop, Geop.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :geop, :db, name: "my_mongo_test"
# Configure your database
config :geop, Geop.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "geop_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
