use Mix.Config

# Configure your database
config :stuffthing, Stuffthing.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "stuffthing_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
