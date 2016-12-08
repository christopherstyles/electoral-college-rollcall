defmodule ElectoralCollegeRollcall.Repo do
  use Ecto.Repo, otp_app: :electoral_college_rollcall
  use Scrivener, page_size: 10
end
