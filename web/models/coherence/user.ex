defmodule ElectoralCollegeRollcall.User do
  use ElectoralCollegeRollcall.Web, :model
  use Coherence.Schema

  schema "users" do
    field :admin, :boolean
    field :email, :string
    field :name, :string
    coherence_schema

    timestamps
  end

  @permitted_params [
    :email, :name, :admin
  ]

  @required_params [
    :email, :name
  ]

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @permitted_params ++ coherence_fields)
    |> validate_required(@required_params)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> validate_coherence(params)
  end
end
