defmodule ElectoralCollegeRollcall.Repo.Migrations.CreateElector do
  use Ecto.Migration

  def change do
    create table(:electors) do
      add :name, :string
      add :email, :string
      add :address, :string
      add :phone, :string
      add :state, :string
      add :party, :string
      add :nominal_status, :string
      add :hamilton_status, :string
      add :politico_profile, :string
      add :politico_elector_number, :integer

      timestamps()
    end
  end
end
