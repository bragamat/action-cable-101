class WebMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_messages_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
