defmodule GreenifyWeb.Router do
  use GreenifyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do 
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: Greenify.Schema
  end

end
