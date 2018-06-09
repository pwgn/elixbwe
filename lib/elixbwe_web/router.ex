defmodule ElixbweWeb.Router do
  use ElixbweWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixbweWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", ElixbweWeb do
    pipe_through :api

    # Tags api
    get "/tags", TagsController, :get_all
    get "/tags/:id", TagsController, :get_by_id

    # Exercises api
    get "/exercises/random", ExercisesController, :get_randoms

  end
end
