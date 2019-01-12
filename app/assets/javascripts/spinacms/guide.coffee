$.fn.extend
  enhanceGuide: (options) ->
    return @each () ->
      $guide = $(this)

      $guide.find('code').each (i, block) ->
        block.innerHTML = block.innerHTML.replace("\n", "")
        hljs.highlightBlock(block)

$(document).on 'turbolinks:load', ->
  $('.guide').enhanceGuide()

$(document).on 'click', '.toggle-guide-navigation', (e) ->
  e.preventDefault()
  $('.guide').toggleClass('opened')

$(document).on 'click', '.guide-sidebar nav ul li a', (e) ->
  $('.guide').removeClass('opened')
  $('.guide-sidebar li').removeClass('current active')
  $(this).parent().addClass('current active')
