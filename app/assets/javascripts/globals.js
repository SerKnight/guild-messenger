$(document).on('turbolinks:load', function() {
	menuToggle();
	submit_message();
	autofillOff()
})

function menuToggle(){
	$('#menu-toggle').click(function(){
		$(this).toggleClass('open');
		$('.nav-links-mobile-wrapper').toggleClass('mobile-menu-active');
	});
}



function autofillOff() {
	if(navigator.userAgent.toLowerCase().indexOf('chrome') != -1) {
	  $("input[name='message[content]']").attr('autocomplete', 'off');
	}
}