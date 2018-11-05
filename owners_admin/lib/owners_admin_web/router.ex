defmodule OwnersAdminWeb.Router do
  use OwnersAdminWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", OwnersAdminWeb do
    pipe_through(:api)
  end
end
