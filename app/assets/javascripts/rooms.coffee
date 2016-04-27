$ ->
  $messages = $('#messages')
  $messages.scrollTop $messages.prop('scrollHeight')

  $('#input-field-toggle').on 'click', (e) ->
    $('#message_input').toggleClass( 'hidden' ).focus()

$(document).on 'keypress', '#message_input', (e) ->
  if e.keyCode == 13 and e.target.value
    App.room.speak(e.target.value)
    e.target.value = ''
    e.preventDefault()




