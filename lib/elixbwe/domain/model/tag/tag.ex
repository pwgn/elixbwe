defmodule Elixbwe.Domain.Model.Tag do
  use Ecto.Schema

  @primary_key {:id, :string, autogenerate: false}
  @derive {Phoenix.Param, key: :id}
  schema "tags" do
    field :description, :string
  end
end
