(function() {
  var $images, transitImage;

  if ($('.home-index').length) {
    $images = $('.background .images');
    transitImage = function($image) {
      return $image.animate({
        opacity: 0
      }, {
        duration: 1000,
        easing: 'easeOutQuad',
        complete: function() {
          return $image.prependTo($images).css({
            opacity: 1
          });
        }
      });
    };
    imagesLoaded($images, function() {
      $images = $images.html(_.shuffle($images.find('img')));
      $images.fadeIn(1000);
      return setInterval(function() {
        var $image;
        $image = $images.find('img').last();
        return transitImage($image);
      }, 7000);
    });
  }

}).call(this);
