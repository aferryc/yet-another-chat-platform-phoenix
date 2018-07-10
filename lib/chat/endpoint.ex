defmodule Chat.Endpoint do
  use Phoenix.Endpoint, otp_app: :chat

  socket "/socket", Chat.UserSocket

<<<<<<< HEAD
  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/", from: :chat, gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
=======

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :chat,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.CodeReloader
    plug Phoenix.LiveReloader
  end


>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_chat_key",
<<<<<<< HEAD
    signing_salt: "5gEn2F8P"

  plug CORSPlug
  
=======
    signing_salt: "LH6XmqGb",
    encryption_salt: "CIPZg4Qo"

>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
  plug Chat.Router
end
