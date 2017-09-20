ready = ->

  # Initialize plyr
  plyr.setup('.js-player')

$(document).on 'turbolinks:load', ready

$(document).on 'click', '.fullscreen-video-toggle', (e) ->
  e.preventDefault()
  $('.homepage-videos').toggleClass('fullscreen-video-enabled')

  # Get all players
  players = plyr.get()

  # Play the video
  players[0].play()