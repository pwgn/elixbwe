defmodule ElixbweWeb.PageController do
  use ElixbweWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
