// add table class for tables
$(document).ready(function() {
    $("table").wrap("<div class='table-responsive'></div>");
    $("table").addClass("table");
});

// var imageList = hexo.theme.cover_images;
// var currentIndex = 0;
// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });

    var header_height = $('.intro-header').height();

    $(window).on('scroll', function() {
      $('nav').toggleClass('navbar-toggle', window.pageYOffset < header_height);
    });
    //
    // $('.next-img').on('click', function() {
    //   currentIndex = (currentIndex + 1) % imageList.length;
    //   $('.intro-header').css('background-image', 'url("..'+imageList[currentIndex]+'")');
    // });

});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

$('div.modal').on('show.bs.modal', function() {
	var modal = this;
	var hash = modal.id;
	window.location.hash = hash;
	window.onhashchange = function() {
		if (!location.hash){
			$(modal).modal('hide');
		}
	}
});
