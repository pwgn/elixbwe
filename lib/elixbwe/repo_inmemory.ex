defmodule Elixbwe.RepoInMemory do
  def all(Elixbwe.Tag) do
    tags = [
      %Elixbwe.Tag{id: "upper_body", description: "Upper body"},
      %Elixbwe.Tag{id: "lower_body", description: "Lower body"},
      %Elixbwe.Tag{id: "core_body", description: "Core"},
    ]
    tags
  end
end
