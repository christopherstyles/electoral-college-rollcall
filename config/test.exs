use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :electoral_college_rollcall, ElectoralCollegeRollcall.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :electoral_college_rollcall, ElectoralCollegeRollcall.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_POSTGRESQL_USERNAME") || "postgres",
  password: System.get_env("DATABASE_POSTGRESQL_PASSWORD") || "postgres",
  hostname: System.get_env("DATABASE_POSTGRESQL_HOST") || "localhost",
  database: "electoral_college_rollcall_test",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure email
config :coherence, ElectoralCollegeRollcall.Coherence.Mailer,
  adapter: Swoosh.Adapters.Test

# Configure JUnitFormatter for CircleCI
config :junit_formatter,
  report_file: "results.xml",
  print_report_file: true
