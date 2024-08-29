defmodule AlpinaWeb.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/html")
    |> send_file(200, "priv/static/index.html")
  end
end