/**
 * Particleground demo
 * @author Jonathan Nicol - @mrjnicol
 */

document.addEventListener("turbolinks:load", function() {
  particleground(document.getElementById('particles'), {
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  // var intro = document.getElementById('intro');
  // intro.style.marginTop = '-200px';
}, false);

// 本来は上のDOMContentLoadedでturbolinks:loadを使いたいが、DOMが複製されてしまうので仕方なくブラウザバックしたら強制リロードするようにしているする、そうすることで正常にcanvasが動く
jQuery( document ).ready(function( $ ) {
  //Use this inside your document ready jQuery 
  $(window).on('popstate', function() {
     location.reload(true);
  });
});

/*
// jQuery plugin example:
$(document).ready(function() {
  $('#particles').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  $('.intro').css({
    'margin-top': -($('.intro').height() / 2)
  });
});
*/

document.addEventListener("turbolinks:load", function() {
  $('.popupbutton').on('click', function(){
    $('.wrap, .popupbutton').toggleClass('active');
    return false;
  });
}, false);