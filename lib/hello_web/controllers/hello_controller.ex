defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger} = _params) do
    messenger = messenger <> " the messenger"
    render(conn, :show, messenger: messenger)
  end
end
