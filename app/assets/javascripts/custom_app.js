$(window).scroll(function () {
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
      $('#navigation').css("background-color", "#9ac5d1");
    } else {
      $('#navigation').css("background-color", "transparent");
    }
});

$(document).ready(function() {
  
    WebFontConfig = {
    google: { families: [ 'Titillium+Web:400,600:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })();

  $('[data-toggle=offcanvas]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });
  
});
