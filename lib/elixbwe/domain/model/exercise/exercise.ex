defmodule Exlibwe.Domain.Model.Exercise do
  use Ecto.Schema

  schema "exercise" do
    field :name, :string
    field :description, :string
  end
end
