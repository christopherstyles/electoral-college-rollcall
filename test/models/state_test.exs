defmodule ElectoralCollegeRollcall.StateTest do
  use ElectoralCollegeRollcall.ModelCase

  alias ElectoralCollegeRollcall.State

  @valid_attrs %{abbreviation: "some content", assoc_press: "some content", census_division: "some content", census_division_name: "some content", census_region: "some content", census_region_name: "some content", circuit_court: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = State.changeset(%State{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = State.changeset(%State{}, @invalid_attrs)
    refute changeset.valid?
  end
end
