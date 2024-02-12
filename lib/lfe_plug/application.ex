defmodule LfePlug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  alias LfePlug.Router

  @impl true
  def start(_type, _args) do
    children = [
      {Bandit, plug: Router, scheme: :http, port: 7157}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LfePlug.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
