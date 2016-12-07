# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElectoralCollegeRollcall.Repo.insert!(%ElectoralCollegeRollcall.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


ElectoralCollegeRollcall.Repo.delete_all ElectoralCollegeRollcall.User

ElectoralCollegeRollcall.User.changeset(%ElectoralCollegeRollcall.User{}, %{name: "Test User", email: "testuser@example.com", password: "testing123", password_confirmation: "testing123"})
|> ElectoralCollegeRollcall.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
