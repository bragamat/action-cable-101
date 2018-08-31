App.web_messages = App.cable.subscriptions.create "WebMessagesChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']
    $('#messageInput').val('')
    # Called when there's incoming data on the websocket for this channel
