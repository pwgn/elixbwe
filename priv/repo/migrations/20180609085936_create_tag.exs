defmodule Elixbwe.Repo.Migrations.CreateTag do
  use Ecto.Migration

  def up do
    create table(:tags, primary_key: false) do
      add :id, :string, primary_key: true
      add :description, :string
    end
  end

  def down do
    drop table(:tags)
  end
end
