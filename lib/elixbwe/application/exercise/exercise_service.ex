defmodule Elixbwe.Application.Exercise.ExerciseService do
  alias Elixbwe.Repo

  def get_random(nrOfExercises) do
    exercises = Repo.all(Elixbwe.Domain.Model.Exercise)
                |> Repo.preload(:tags)
    Enum.take_random(exercises, nrOfExercises)
  end

end
