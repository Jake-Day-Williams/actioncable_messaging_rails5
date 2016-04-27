App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    console.log 'connected'
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log 'you are not connected'
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $messages = $('#messages')
    $messages.append data
    $messages.scrollTop $messages.prop('scrollHeight')

  speak: (message) ->
    @perform 'speak', message: message
