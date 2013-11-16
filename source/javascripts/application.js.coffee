if $('.home-index').length
  $images = $('.background .images')

  transitImage = ($image) ->
    $image.animate
      opacity: 0
    ,
      duration: 1000
      easing: 'easeOutQuad'
      complete: ->
        $image.prependTo($images).css(opacity: 1)

  imagesLoaded $images, ->
    $images = $images.html(_.shuffle($images.find('img')))
    $images.fadeIn(1000)

    setInterval ->
      $image = $images.find('img').last()
      transitImage($image)
    , 7000
