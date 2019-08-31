defmodule BuneskaCms.Repo do
  use Ecto.Repo,
    otp_app: :buneska_cms,
    adapter: Ecto.Adapters.Postgres
end
