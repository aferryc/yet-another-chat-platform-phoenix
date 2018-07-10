defmodule Chat.RoomChannel do
<<<<<<< HEAD
  use Chat.Web, :channel
  alias Chat.MessageView
  alias Chat.Message

  #Specifies the topic:subtopic to be joined.
  def join("rooms:lobby", _message, socket) do
    #Fetches all messages from the DB
    messages = Repo.all(Message)
    IO.inspect messages

    #passing the messages struct to be rendered as json and to modify what will be showed to the user.
    #In this case it will only show the body.
    resp = %{messages: Phoenix.View.render_many(messages, MessageView, "message.json")}
    IO.inspect resp
    {:ok, resp, socket}
  end

  #handles incoming channel.push events from the client.
  #On successful DB insert it will broadcast the message to the client event.
  #The client will fetch the broadcast through the channel.on event.
  def handle_in("new_msg", params, socket) do
    changeset = Message.changeset(%Message{}, params)
    case Repo.insert(changeset) do
      {:ok, message} ->
        broadcast! socket, "new_msg", %{body: message.body}
    end
    #reply or non-reply must be returned
    {:noreply, socket}
  end
=======
  use Phoenix.Channel
  require Logger

  @doc """
  Authorize socket to subscribe and broadcast events on this channel & topic

  Possible Return Values

  `{:ok, socket}` to authorize subscription for channel for requested topic

  `:ignore` to deny subscription/broadcast on this channel
  for the requested topic
  """
  def join("rooms:lobby", message, socket) do
    Process.flag(:trap_exit, true)
    :timer.send_interval(5000, :ping)
    send(self, {:after_join, message})

    {:ok, socket}
  end

  def join("rooms:" <> _private_subtopic, _message, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_info({:after_join, msg}, socket) do
    broadcast! socket, "user:entered", %{user: msg["user"]}
    push socket, "join", %{status: "connected"}
    {:noreply, socket}
  end
  def handle_info(:ping, socket) do
    push socket, "new:msg", %{user: "SYSTEM", body: "ping"}
    {:noreply, socket}
  end

  def terminate(reason, _socket) do
    Logger.debug"> leave #{inspect reason}"
    :ok
  end

  def handle_in("new:msg", msg, socket) do
    broadcast! socket, "new:msg", %{user: msg["user"], body: msg["body"]}
    {:reply, {:ok, %{msg: msg["body"]}}, assign(socket, :user, msg["user"])}
  end
>>>>>>> 7fb1d3d040b9d1e9a1bbd239c60ca1f4dd403c24
end
