defmodule LfePlug.ElixirPlug do
  @moduledoc """
  A basic plug written in Elixir.
  """

  import Plug.Conn
  @behaviour Plug

  @impl true
  def init(opts) do
    opts
  end

  @impl true
  def call(conn, _opts) do
    send_resp(conn, 200, """
    <html>
      <head>
        <title>Plugs with LFE</title>
      </head>
      <body>
        This page is rendered with Elixir
      </body>
    </html>
    """)
  end
end
