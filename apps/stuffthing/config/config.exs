use Mix.Config

config :stuffthing, ecto_repos: [Stuffthing.Repo]



import_config "#{Mix.env}.exs"
