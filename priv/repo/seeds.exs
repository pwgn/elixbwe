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
alias Elixbwe.Domain.Model.Exercise

tag_upper = Elixbwe.Repo.insert!(%Tag{id: "upper_body", description: "Upper body"})
tag_lower = Elixbwe.Repo.insert!(%Tag{id: "lower_body", description: "Lower body"})
tag_core = Elixbwe.Repo.insert!(%Tag{id: "core_body", description: "Core"})

ex = Elixbwe.Repo.insert! %Exercise{name: "Plank", description: "You know how to do it!"} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Side plank", description: "Raise upper arm straigth into the air."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Side plank with rotation", description: "Rotate upper arm bellow lower body."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Side plank with tap", description: "Place a 50cl bottle in front of you, tap its top with your finger tip from plank possition."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Dirty dogs", description: "Push-up position -> Yoga Cobra -> Yoga Upper Dog -> touch left hand to rigth foot (Alternate between reps)."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Push-up", description: "Just do it!"} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Spider push-up", description: "When going to lower position, move knee towards elbow."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Rotational push-up", description: "In upper position raise one arm straight up."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Explosive push-up", description: "Push to jump with hands."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "V up", description: "Lay full length on back, form a V by touching your feet with your hands."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Superman", description: "Lay full length on belly, raise arms and legs."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Back bridge", description: "Lay on back, bend your knees. Raise buttom and form straigth line from chest to knees."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Bicycle crunch", description: "Move knee to chest, twist oposite shoulder towards knee."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Sit-up", description: "You know.."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Russian twist", description: "Half way situp, hold arms straigth out from body, twist from left to rigth."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Burpees", description: "Push-up -> squat -> Jump! -> push-up"} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_upper, tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Squat", description: ""} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Sumo squat", description: "Wide squats"} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Squat thrust", description: "Push-up position, jump both knees between elbows."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Jump squat", description: "Squat with a jump."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Jumping lunges", description: "Lunges with a jump."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Forward lunges", description: ""} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Wide push-up", description: ""} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Narrow push-up", description: ""} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Dips", description: "From a chair."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_upper])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Mountain climbers", description: "Push-up position, alternate knee between elbows."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Cross body knee", description: "Push-up position, alternate knee to oposite elbow."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Slow mountain climbers", description: "Push-up position, touch inside knee on outside elbow."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core, tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Cossacks", description: "Wide beteen feets, lower one leg at the time."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Diagonal raise", description: "Push-up position, raise arm and oposite leg, alternate."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Pulse up", description: "Lay on back raise legs to an L position, raise buttom."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "One leg squat", description: ""} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_lower])
ex = Elixbwe.Repo.update!(ex_with_tag)

ex = Elixbwe.Repo.insert! %Exercise{name: "Single-leg Plank", description: "In a regular plank position lift one leg a foot off the ground for 10 seconds and alternate."} |> Elixbwe.Repo.preload(:tags)
ex_changeset = Ecto.Changeset.change(ex)
ex_with_tag = Ecto.Changeset.put_assoc(ex_changeset, :tags, [tag_core])
ex = Elixbwe.Repo.update!(ex_with_tag)
