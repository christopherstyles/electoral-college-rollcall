defmodule ElectoralCollegeRollcall.Router do
  use ElectoralCollegeRollcall.Web, :router
  use Coherence.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session, protected: true  # Add this
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser
    coherence_routes :public
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/", ElectoralCollegeRollcall do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    # Public routes below
  end

  scope "/", ElectoralCollegeRollcall do
    pipe_through :protected
    # Protected routes below
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElectoralCollegeRollcall do
  #   pipe_through :api
  # end

  if Mix.env == :dev do
    scope "/dev" do
      pipe_through [:browser]

      forward "/mailbox", Plug.Swoosh.MailboxPreview, [base_path: "/dev/mailbox"]
    end
  end
end
