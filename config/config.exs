# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :electoral_college_rollcall,
  ecto_repos: [ElectoralCollegeRollcall.Repo]

# Configures the endpoint
config :electoral_college_rollcall, ElectoralCollegeRollcall.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e3t9XyaCUH41ICIWmSng4TOCP+T6Q1wGGUt6AgdaOusW58NEuJ2EWBJlHm8hPft9",
  render_errors: [view: ElectoralCollegeRollcall.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElectoralCollegeRollcall.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: ElectoralCollegeRollcall.User,
  repo: ElectoralCollegeRollcall.Repo,
  module: ElectoralCollegeRollcall,
  logged_out_url: "/",
  email_from_name: "Electoral College Rollcall",
  email_from_email: "info@electoral-college-rollcall.herokuapp.com",
  opts: [:rememberable, :confirmable, :invitable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]


# %% End Coherence Configuration %%
