defmodule ElectoralCollegeRollcall.Repo.Migrations.ChangeStateToReference do
  use Ecto.Migration

  def change do
    alter table(:electors) do
      remove :state
      add :state_id, references(:states)
    end
  end
end
