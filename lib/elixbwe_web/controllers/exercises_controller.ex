defmodule ElixbweWeb.ExercisesController do
  use ElixbweWeb, :controller
  alias Elixbwe.Application.Exercise.ExerciseService

  def get_randoms(conn, _params) do
    exercises = ExerciseService.get_random(4)
    json conn, exercises
  end

  def get_daily(conn, _params) do
    exercises = ExerciseService.get_daily()
    json conn, exercises
  end

end
