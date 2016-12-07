defmodule ElectoralCollegeRollcall.PageControllerTest do
  use ElectoralCollegeRollcall.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to the Electoral College Rollcall"
  end
end
