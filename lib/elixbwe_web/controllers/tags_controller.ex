defmodule ElixbweWeb.TagsController do
  use ElixbweWeb, :controller

  def index(conn, _params) do
    tags = Elixbwe.RepoInMemory.all(Elixbwe.Tag)
    json conn, tags
  end
end
