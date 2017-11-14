ready = ->
  current_page = $('body').attr('data-current-page')
  ancestors = $('body').attr('data-ancestors')

  # Remove classes
  $("li[data-page-id]").removeClass('current active')

  # Add current and active class to current page
  $("li[data-page-id=#{current_page}]").addClass('current active')

  # Add active class to ancestors
  if ancestors.length
    for ancestor in ancestors.split('-')
      $("li[data-page-id=#{ancestor}]").addClass('active')

$(document).on 'turbolinks:load', ready

$(document).on 'click', '#primary_nav li a', (e) ->
  $('#primary_nav li').removeClass('current active')
  $(this).parent().addClass('current active')
