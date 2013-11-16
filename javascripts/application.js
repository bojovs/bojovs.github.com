(function() {
  if ($('.home-index').length) {
    setInterval(function() {
      var $image, $images;
      $images = $('.background .images');
      $image = $images.find('img').last();
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
    }, 7000);
  }

}).call(this);
