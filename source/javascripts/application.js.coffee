if $('.home-index').length
  setInterval ->
    $images = $('.background .images')
    $image = $images.find('img').last()
    $image.animate
      opacity: 0
    ,
      duration: 1000
      easing: 'easeOutQuad'
      complete: ->
        $image.prependTo($images).css(opacity: 1)
  , 7000
