defmodule ElixbweWeb.TagsController do
  use ElixbweWeb, :controller
  alias Elixbwe.Application.Tag.TagService

  def get_all(conn, _params) do
    tags = TagService.get_all()
    json conn, tags
  end

  def get_by_id(conn, %{"id" => id}) do
    tag = TagService.get_by_id(id)
    json conn, tag
  end
end
