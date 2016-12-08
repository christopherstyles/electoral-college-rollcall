defmodule ElectoralCollegeRollcall.Elector do
  use ElectoralCollegeRollcall.Web, :model

  schema "electors" do
    field :name, :string
    field :email, :string
    field :address, :string
    field :phone, :string
    field :party, :string
    field :nominal_status, :string
    field :hamilton_status, :string
    field :politico_profile, :string
    field :politico_elector_number, :integer

    belongs_to :state, ElectoralCollegeRollcall.State

    timestamps()
  end

  @permitted_params [
    :address, :email, :hamilton_status, :name, :nominal_status, :phone, :party,
    :politico_elector_number, :politico_profile, :state_id
  ]

  @required_params [
    :name, :state_id
  ]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @permitted_params)
    |> validate_required(@required_params)
    |> assoc_constraint(:state)
  end
end
