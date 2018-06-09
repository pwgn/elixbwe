# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Elixbwe.Repo.insert!(%Elixbwe.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Elixbwe.Domain.Model.Tag

Elixbwe.Repo.insert!(%Tag{id: "upper_body", description: "Upper body"})
Elixbwe.Repo.insert!(%Tag{id: "lower_body", description: "Lower body"})
Elixbwe.Repo.insert!(%Tag{id: "core_body", description: "Core"})
