defmodule AlpinaWeb.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, File.read!(Application.app_dir(:alpina, "priv/static/index.html")))
  end

  def blog(conn, _params) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, File.read!(Application.app_dir(:alpina, "priv/static/blog.html")))
  end

  def shop(conn, _params) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, File.read!(Application.app_dir(:alpina, "priv/static/shop.html")))
  end  
end