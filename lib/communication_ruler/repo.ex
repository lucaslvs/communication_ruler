defmodule CommunicationRuler.Repo do
  use Ecto.Repo,
    otp_app: :communication_ruler,
    adapter: Ecto.Adapters.Postgres
end
