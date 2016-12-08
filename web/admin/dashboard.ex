defmodule ElectoralCollegeRollcall.ExAdmin.Dashboard do
  use ExAdmin.Register

  register_page "Dashboard" do
    menu priority: 1, label: "Dashboard"
    content do
      div ".blank_slate_container#dashboard_default_message" do
        span ".blank_slate" do
          span "Welcome to the Admin. "
          small "Add and edit Electors or Users with the controls on the left.'"
        end
      end
    end
  end
end
