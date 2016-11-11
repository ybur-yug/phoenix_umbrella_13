defmodule StuffthingWeb.DnaRow do
  use Ecto.Schema
  
  schema "dna_row" do
    field :dna_sequence, :string
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
end
