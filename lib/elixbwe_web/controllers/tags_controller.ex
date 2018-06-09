defmodule ElixbweWeb.TagsController do
  use ElixbweWeb, :controller

  def index(conn, _params) do
    tags = Elixbwe.Repo.all(Elixbwe.Domain.Model.Tag)
    json conn, tags
  end
end
