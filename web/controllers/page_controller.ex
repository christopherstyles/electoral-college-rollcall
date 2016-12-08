defmodule ElectoralCollegeRollcall.PageController do
  use ElectoralCollegeRollcall.Web, :controller

  alias ElectoralCollegeRollcall.Elector

  plug :load_electors when action in [:index]

  def index(conn, _params) do
    render conn, "index.html"
  end

  def load_electors(conn, _) do
    electors = Repo.all from e in Elector, preload: [:state]

    assign(conn, :electors, electors)
  end
end
