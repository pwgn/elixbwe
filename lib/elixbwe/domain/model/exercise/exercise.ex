defmodule Elixbwe.Domain.Model.Exercise do
  use Ecto.Schema

  schema "exercises" do
    field :name, :string
    field :description, :string
    many_to_many :tags, Elixbwe.Domain.Model.Tag, join_through: "exercises_tags"
  end
end
