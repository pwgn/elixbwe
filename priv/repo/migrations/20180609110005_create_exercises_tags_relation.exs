defmodule Elixbwe.Repo.Migrations.CreateExercisesTagsRelation do
  use Ecto.Migration

  def change do
    create table(:exercises_tags, primary_key: false) do
      add :exercise_id, references(:exercises)
      add :tag_id, references(:tags, type: :string)
    end

    create unique_index(:exercises_tags, [:exercise_id, :tag_id])
  end
end
