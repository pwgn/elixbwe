defmodule ElixbweWeb.TagsController do
  use ElixbweWeb, :controller

  def get_all(conn, _params) do
    tags = Elixbwe.Repo.all(Elixbwe.Domain.Model.Tag)
    json conn, tags
  end

  def get_by_id(conn, %{"id" => id}) do
    tag = Elixbwe.Repo.get(Elixbwe.Domain.Model.Tag, id)
    json conn, tag
  end
end
