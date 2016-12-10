defmodule ElectoralCollegeRollcall.PageController do
  use ElectoralCollegeRollcall.Web, :controller

  alias ElectoralCollegeRollcall.Elector
  alias ElectoralCollegeRollcall.State

  plug :load_electors when action in [:index]
  plug :load_states when action in [:index]

  def index(conn, _params) do
    render conn, "index.html"
  end

  defp load_electors(conn, _) do
    electors = Repo.all from e in Elector, preload: [:state]
    assign(conn, :electors, electors)
  end

  defp load_states(conn, _) do
    states = Repo.all from s in State
    assign(conn, :states, states)
  end
end
