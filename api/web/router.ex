defmodule Agile.Router do
  use Agile.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Agile do
    pipe_through :api
  end
end
