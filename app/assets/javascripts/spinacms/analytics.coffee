$(document).on 'turbolinks:load', ->
  ga('send', 'pageview', window.location.pathname)