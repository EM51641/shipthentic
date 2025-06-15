defmodule Shipthentic.Repo do
  use Ecto.Repo,
    otp_app: :shipthentic,
    adapter: Ecto.Adapters.Postgres
end
