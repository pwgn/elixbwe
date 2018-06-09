# Elixbwe

## About

Simple body-weight exercise random generator. Generate a set of random exercises to perform.

`Elixbwe.Application.Exercise.DailyExercisesGeneratorWorker` is currently configured to generate a new daily schedule every 5 seconds. This is for testing purposes.

## REST Api

```
GET api/exercises/random - Generates four random exercises.

GET api/exercises/daily - Returns the daily exercises.
```

## Run

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
