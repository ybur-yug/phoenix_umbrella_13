# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Stuffthing.Repo.insert!(%Stuffthing.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
defmodule Seeder do
  import Ecto.Query

  def seed(n \\ 100_000) do
    strings = ["A", "T", "C", "G"] 
    dna_string = (0..70) 
                 |> Enum.to_list 
                 |> Enum.map(fn(_) -> 
                   [sample|rest] = strings |> Enum.shuffle
                   sample
                 end)
                 |> Enum.join("")

   StuffThing.Repo.insert_all("dna_rows", [
                               %{dna_sequence: dna_string}
                              ])
  end

  def strings, do: ["A", "T", "C", "G"]

  def random_string do
    [char|rest] = strings |> Enum.shuffle
    char
  end

  def dna_sequence do
    (0..70) |> Enum.to_list |> Enum.map(fn(_) -> random_string end)
               |> Enum.join("")
  end
end

Seeder.seed(100_000)
