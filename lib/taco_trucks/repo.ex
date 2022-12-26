defmodule TacoTrucks.Repo do
  use Ecto.Repo,
    otp_app: :taco_trucks,
    adapter: Ecto.Adapters.Postgres
end
