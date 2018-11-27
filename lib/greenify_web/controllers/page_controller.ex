defmodule GreenifyWeb.PageController do
  use GreenifyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
