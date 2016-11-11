defmodule Stuffthing.Web.PageController do
  use Stuffthing.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
