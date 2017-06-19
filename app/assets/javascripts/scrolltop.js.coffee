ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if document.URL.match("/blogs")
      if height > 200
        element.fadeIn() if !visible
      else
        element.fadeOut()
    else 
      if height > 400
        element.fadeIn() if !visible
      else
        element.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')
      
$(document).ready(ready)
$(document).on('page:load', ready)
