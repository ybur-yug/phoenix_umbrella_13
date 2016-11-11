use Mix.Config

# Configure your database
config :stuffthing, Stuffthing.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "bobdawg",
  password: "",
  database: "stuffthing_dev",
  hostname: "localhost",
  pool_size: 10
