defmodule Elixbwe.Application.Exercise.DailyExercisesGeneratorWorker do
  use GenServer

  # API

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: :daily_exercisesGenerator_worker)
  end

  def get_daily_schema() do
    GenServer.call(:daily_exercisesGenerator_worker, :get_daily_schema)
  end

  # Server

  def init(_) do
    exercises = get_random_exercises()
    schedule_work()
    {:ok, exercises}
  end

  defp schedule_work() do
    Process.send_after(self(), :generate_daily_schema, 1000 * 5) # Scheduled every 5 sec for now
  end

  def handle_call(:get_daily_schema, _from, state) do
    schedule_work()
    {:reply, state, state}
  end

  def handle_info(:generate_daily_schema, state) do
    daily_exercises = get_random_exercises()
    {:noreply, daily_exercises}
  end

  def get_random_exercises() do
    exercises = Elixbwe.Application.Exercise.ExerciseService.get_random(4)
    exercises
  end

end
