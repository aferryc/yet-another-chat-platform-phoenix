defmodule Chat.Router do
<<<<<<< HEAD
  use Chat.Web, :router
=======
  use Phoenix.Router
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
<<<<<<< HEAD
    plug :put_secure_browser_headers
=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Chat do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
<<<<<<< HEAD

  # Other scopes may use custom stacks.
  # scope "/api", Chat do
  #   pipe_through :api
  # end
=======
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
end
