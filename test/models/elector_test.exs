defmodule ElectoralCollegeRollcall.ElectorTest do
  use ElectoralCollegeRollcall.ModelCase

  alias ElectoralCollegeRollcall.Elector

  @valid_attrs %{
    name: "Lulu Bailey",
    state: "MD"
  }

  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Elector.changeset(%Elector{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Elector.changeset(%Elector{}, @invalid_attrs)
    refute changeset.valid?
  end
end
