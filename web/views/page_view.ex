defmodule ElectoralCollegeRollcall.PageView do
  use ElectoralCollegeRollcall.Web, :view

  alias ElectoralCollegeRollcall.Repo
  alias ElectoralCollegeRollcall.State

  def grouped_electors(conn) do
    Enum.group_by(conn.assigns[:electors], fn elector ->
      Repo.get(State, elector.state_id).name
    end)
    |> Enum.sort
  end
end
