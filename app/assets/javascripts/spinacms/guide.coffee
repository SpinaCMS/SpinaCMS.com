ready = ->

  $('pre code').each (i, block) ->
    block.innerHTML = block.innerHTML.replace("\n", "")
    hljs.highlightBlock(block)

$(document).on 'turbolinks:load', ready

$(document).on 'click', '.toggle-guide-navigation', (e) ->
  e.preventDefault()
  $('.guide').toggleClass('opened')

$(document).on 'click', '.guide-sidebar nav ul li a', (e) ->
  $('.guide').removeClass('opened')