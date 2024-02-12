defmodule LfePlug.Router do
  @moduledoc """
  Plug Router for the demo application.

  The router API from plug is heavily macro based and as such cannot be written
  in LFE (yet).
  """

  use Plug.Router

  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(conn, 200, """
    <html>
      <head>
        <title>Plugs with LFE</title>
      </head>
      <body>
        The router is rendered with Elixir
        <ul>
          <li><a href="/elixir">This page is rendered with a plug written in Elixir</a></li>
          <li><a href="/lfe">This page is rendered with a plug written in Lisp Flavoured Erlang</a></li>
        </ul>
      </body>
    </html>
    """)
  end

  get("/elixir", to: LfePlug.ElixirPlug)

  match _ do
    send_resp(conn, 404, "not found")
  end
end
