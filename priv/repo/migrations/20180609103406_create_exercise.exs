defmodule Elixbwe.Repo.Migrations.CreateExercise do
  use Ecto.Migration

  def up do
    create table(:exercises) do
      add :name, :string
      add :description, :string
    end
  end

  def down do
    drop table(:exercises)
  end
end
