class MessagesController < ApplicationController
  def create
    message = Message.create!(params.permit(:message))
    if message.save
      ActionCable.server.broadcast 'web_messages_channel', message: " <div><h2>#{message.message}</h2> </div>"
    end
  end
end
