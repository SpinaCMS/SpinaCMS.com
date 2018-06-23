ready = ->

  # Initialize plyr
  plyr.setup('.js-player')

  # Initialize plyr for screencasts
  plyr.setup('.screencast-player', {ratio: "16:10"})

$(document).on 'turbolinks:load', ready

$(document).on 'click', '.fullscreen-video-play', (e) ->
  e.preventDefault()
  $('.homepage-videos').addClass('fullscreen-video-enabled')

  # Get all players & play the video
  players = plyr.get()
  players[0].play()

$(document).on 'click', '.fullscreen-video-stop', (e) ->
  e.preventDefault()

  $('.homepage-videos').removeClass('fullscreen-video-enabled')

  # Get all players & pause the video
  players = plyr.get()
  players[0].stop()