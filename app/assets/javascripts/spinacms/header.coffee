animateHeader = (e) ->
  scrollY = window.scrollY
  direction = "down"

  if $('body').attr('data-scroll-y') and $('body').attr('data-scroll-y') > scrollY
    direction = "up"

  # Header title animation
  opacity = 1 * (1 - scrollY / 400)
  translate = scrollY / 250 * 50
  $('.header-title .container').css({opacity: opacity, transform: "translateY(#{translate}px)"})
  $('.header-title img.header-image').css({transform: "translateX(#{translate * 2}px)"})

  if document.getElementById('primary_header').getBoundingClientRect().bottom < -20
    $('body').addClass('fixed-navigation')
    translate = -1 * document.getElementById('primary_header').getBoundingClientRect().bottom - 20
    translate = 64 if translate > 64
    opacity = translate / 64
    $('#primary_nav').css({transform: "translateY(#{translate}px)", opacity: opacity})
  else
    $('body').removeClass('fixed-navigation')
    $('#primary_nav').css({transform: '', opacity: 1})

  $('body').attr('data-scroll-y', scrollY)

$(window).on 'scroll', animateHeader