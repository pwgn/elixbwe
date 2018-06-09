defmodule Elixbwe.RepoInMemory do
  def all(Elixbwe.Domain.Model.Tag) do
    tags = [
      %Elixbwe.Domain.Model.Tag{id: "upper_body", description: "Upper body"},
      %Elixbwe.Domain.Model.Tag{id: "lower_body", description: "Lower body"},
      %Elixbwe.Domain.Model.Tag{id: "core_body", description: "Core"},
    ]
    tags
  end
end
