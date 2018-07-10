ExUnit.start
<<<<<<< HEAD

Mix.Task.run "ecto.create", ~w(-r Chat.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Chat.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Chat.Repo)

=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
