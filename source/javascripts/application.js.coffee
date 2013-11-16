if $('.home-index').length
  $images = $('.background .images')

  imageDataList = [
   { src: '/images/background/image1.jpg', alt: '長野県 木崎湖キャンプ場のみずほ桟橋から撮影。' },
   { src: '/images/background/image2.jpg', alt: '長野県 木崎湖キャンプ場の方角を向いて撮影。' },
   { src: '/images/background/image6.jpg', alt: '長野県 木崎湖キャンプ場にて、みずほ桟橋といちご桟橋を撮影。' },
   { src: '/images/background/image7.jpg', alt: '長野県 木崎湖キャンプ場にて、いちご桟橋を撮影。' },
   { src: '/images/background/image8.jpg', alt: '京都府 とある路地。' },
   { src: '/images/background/image9.jpg', alt: '広島県尾道市 路地にある鳥居。' },
   { src: '/images/background/image10.jpg', alt: '広島県尾道市 フェリー乗り場。「かみちゅ!」OPの絵ではもっときれいだった。' },
   { src: '/images/background/image11.jpg', alt: '広島県尾道市 路地。' },
   { src: '/images/background/image12.jpg', alt: '広島県尾道市 交差する階段。' },
   { src: '/images/background/image14.jpg', alt: '広島県尾道市 招き猫。やたらといる。' },
   { src: '/images/background/image15.jpg', alt: '広島県尾道市 良神社。またの名を来福神社と云ふ。' },
   { src: '/images/background/image16.jpg', alt: '広島県尾道市 猫の細道。今僕が命名した。' },
   { src: '/images/background/image18.jpg', alt: '広島県尾道市 苔でびっしりな階段。' },
   { src: '/images/background/image19.jpg', alt: '広島県尾道市 尾道市を一望。きれい。' },
   { src: '/images/background/image20.jpg', alt: '広島県尾道市 海沿いを歩く。' },
   { src: '/images/background/image22.jpg', alt: '広島県竹原市 ももねこ様。' },
   { src: '/images/background/image23.jpg', alt: '広島県竹原市 「たまゆら」キャラの風車。' },
   { src: '/images/background/image24.jpg', alt: '広島県 竹原市から家に帰る途中。名残惜しさでいっぱい。' },
   { src: '/images/background/image26.jpg', alt: '広島県竹原市 「たまゆら」キャラの写真展。' },
   { src: '/images/background/image28.jpg', alt: '広島県竹原市 ただいま。' },
   { src: '/images/background/image29.jpg', alt: '広島県尾道市 続く島々。' },
   { src: '/images/background/image30.jpg', alt: '広島県竹原市 町並みが素晴らしい。' },
   { src: '/images/background/image31.jpg', alt: '広島県尾道市 なんとかっていうお寺。名前忘れた…。' },
   { src: '/images/background/image32.jpg', alt: '広島県尾道市 かわいいお地蔵さん。' },
   { src: '/images/background/image33.jpg', alt: '広島県尾道市 「かみちゅ!」のキャラがアイス食べたりしてたベンチ。' },
   { src: '/images/background/image36.jpg', alt: '広島県尾道市 「かみちゅ!」以外にも保険のCMなどで使用されたらしいスポット。' },
   { src: '/images/background/image37.jpg', alt: '広島県「たまゆら」の聖地である竹原市に向かう電車にて。' },
   { src: '/images/background/image38.jpg', alt: '広島県竹原市 竹原駅のホームにて。' },
   { src: '/images/background/image39.jpg', alt: '広島県竹原市 造花だけどきれい。' },
   { src: '/images/background/image40.jpg', alt: '広島県竹原市 お好み焼き食べられなかったので、また行きたい。' },
   { src: '/images/background/image41.jpg', alt: '広島県竹原市 西芳寺の階段から町並みを眺める。' },
   { src: '/images/background/image42.jpg', alt: '広島県 竹原市から家に帰る途中。仰るとおりただの海だったけど、とてもきれいだった。' }
  ]

  transitImage = ($image) ->
    $image.imagesLoaded ->
      $image.appendTo($images).css(opacity: 0)

      $image.stop().animate
        opacity: 1
      , 1000, 'easeOutQuad', ->
        $images.children().first().remove()

  $sampleImage = ->
    imageData = _.sample(imageDataList)
    $('<img>').prop(src: imageData.src, alt: imageData.alt)


  $defaultImage = $sampleImage().hide()
  $defaultImage.imagesLoaded ->
    $defaultImage.appendTo($images).fadeIn(1000)

    setInterval ->
      transitImage($sampleImage())
    , 7000

  _.each imageDataList, (val) ->
    $image = $('<img>').data(original: val.src).prop(alt: val.alt)
    $image.appendTo($images).css(opacity: 0)

  $images.children().lazyload()
