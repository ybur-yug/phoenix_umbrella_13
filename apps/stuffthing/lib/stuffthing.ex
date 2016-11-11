defmodule Stuffthing do
  @moduledoc """
  The Stuffthing Application Service.

  The stuffthing system business domain lives in this application.

  Exposes API to clients such as the `Stuffthing.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      worker(Stuffthing.Repo, []),
    ], strategy: :one_for_one, name: Stuffthing.Supervisor)
  end
end
