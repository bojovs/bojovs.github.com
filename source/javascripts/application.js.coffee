#if $('.index').length
  #setInterval ->
    #$images = $('.background .images img')
    #$image = $images.first()
    #$image.animate
      #opacity: 0
    #,
      #step: ->
        #$('.background .images img:nth-child(2)').animate
          #opacity: 1
        #, 1000
      #complete: ->
        #$images.append($image)
  #, 3000
