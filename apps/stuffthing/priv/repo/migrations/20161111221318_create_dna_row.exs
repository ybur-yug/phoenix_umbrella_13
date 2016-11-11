defmodule StuffthingWeb.Repo.Migrations.CreateDnaRow do
  use Ecto.Migration

  def change do
    create table(:dna_rows) do
      add :dna_sequence, :text

      timestamps()
    end

  end
end
