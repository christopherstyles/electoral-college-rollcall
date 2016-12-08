defmodule ElectoralCollegeRollcall.Repo.Migrations.CreateState do
  use Ecto.Migration

  def change do
    create table(:states) do
      add :name, :string
      add :abbreviation, :string
      add :assoc_press, :string
      add :census_region, :string
      add :census_region_name, :string
      add :census_division, :string
      add :census_division_name, :string
      add :circuit_court, :string

      timestamps()
    end

    create index(:states, [:abbreviation], unique: true)
    create index(:states, [:name], unique: true)
  end
end
