defmodule ElectoralCollegeRollcall.State do
  use ElectoralCollegeRollcall.Web, :model

  schema "states" do
    field :name, :string
    field :abbreviation, :string
    field :assoc_press, :string
    field :census_region, :string
    field :census_region_name, :string
    field :census_division, :string
    field :census_division_name, :string
    field :circuit_court, :string

    timestamps()
  end

  @permitted_params [
    :abbreviation, :assoc_press, :census_division, :census_division_name,
    :census_region, :census_region_name, :circuit_court, :name
  ]

  @required_params [
    :abbreviation, :name
  ]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @permitted_params)
    |> unique_constraint(:abbreviation)
    |> unique_constraint(:name)
    |> validate_required(@required_params)
  end
end
