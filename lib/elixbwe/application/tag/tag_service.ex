defmodule Elixbwe.Application.Tag.TagService do

  def get_all() do
    tags = Elixbwe.Repo.all(Elixbwe.Domain.Model.Tag)
    tags
  end

  def get_by_id(id) do
    tag = Elixbwe.Repo.get(Elixbwe.Domain.Model.Tag, id)
    tag
  end

end
