defmodule Elixbwe.Application.Exercise.ExerciseService do
  alias Elixbwe.Application.Exercise.DailyExercisesGeneratorWorker
  alias Elixbwe.Repo

  def get_random(nrOfExercises) do
    exercises = Repo.all(Elixbwe.Domain.Model.Exercise)
                |> Repo.preload(:tags)
    Enum.take_random(exercises, nrOfExercises)
  end

  def get_daily() do
    exercises = DailyExercisesGeneratorWorker.get_daily_schema()
    exercises
  end
end
