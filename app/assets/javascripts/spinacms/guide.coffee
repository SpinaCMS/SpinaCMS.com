ready = ->

  $('pre code').each (i, block) ->
    block.innerHTML = block.innerHTML.replace("\n", "")
    hljs.highlightBlock(block)

$(document).on 'turbolinks:load', ready