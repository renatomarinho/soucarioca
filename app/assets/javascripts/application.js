// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

Turbolinks.pagesCached(20);

var ready;
ready = function() {

  $('a[href="#"]').on('click', function(){
    return false;
  });

  $window = $(window);

  $('section[data-type="background"]').each(function(){

    var $scroll = $(this);

    $(window).scroll(function() {
        var yPos = -($window.scrollTop() / $scroll.data('speed'));
        var coords = '50% '+ yPos + 'px';
        var coords2 = $window.scrollTop()-30 + 'px';
        $scroll.css({ backgroundPosition: coords });
    });

  });

  $({ Counter: 0 }).animate({ Counter: $('.number-count').text() }, {
    duration: 1000,
    step: function () {
      $('.number-count').text(Math.ceil(this.Counter));
    }
  });


  $('.btn-fiu-fiu, .btn-sai-fora').on('click', function(){

    $toggle = $(this).attr('data-toggle');

    if ( $toggle != 'modal' )
    {

      $action = $(this).attr('data-action');

      if ( $action != 'off' )
      {

        $id = $('#user-info').attr('data-id');
        $option = $(this).attr('data-option');
        $color = $(this).css('backgroundColor');

        $total = parseInt($('.stats-'+$option).find('strong').html())+1;
        $('.stats-'+$option).find('strong').html($total);
        $('.stats-'+$option).fadeOut('fast').css('color',$color).fadeIn('fast');

        $.post('/user/vote_'+$action, {id: $id});

        $('.photo-area .btn-group, .photo-border .photo-user').fadeOut('slow',function(){

            $('.suggest-users').fadeIn('fast');

        });

      }

    }

  });


  $('#username').keyup(function() {
    var $th = $(this);
    $th.val( $th.val().replace(/[^a-zA-Z0-9]/g, function(str) { $('.msg-error').fadeIn('fast').html('Você digitou " ' + str + ' ".\n\nUse somente letras e números.').delay(2200).fadeOut('slow'); return ''; } ) );
  });

};


$(document).ready(ready);
$(document).on('page:load', ready);
