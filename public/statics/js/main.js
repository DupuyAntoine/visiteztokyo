jQuery(document).ready(function($) {

	//
	// TEMPLATE WALL
	//
	$('#wallCarousel').carousel({
		interval: 60000
	});
	// Handles the carousel thumbnails
	$('[id^=carousel-selector-]').click(function () {
		var id_selector = $(this).attr("id");
		try {
			var id = /-(\d+)$/.exec(id_selector)[1];
			console.log(id_selector, id);
			jQuery('#wallCarousel').carousel(parseInt(id));
		} catch (e) {
			console.log('Regex failed!', e);
		}
	});
	// When the carousel slides, auto update the text
	$('#wallCarousel').on('slid.bs.carousel', function (e) {
		var id = $('.item.active').data('slide-number');
		//$('#carousel-text').html($('#slide-content-'+id).html());
	});

	//
	// TEMPLATE ELEMENTS
	//
	$('#form-elements').submit(function() {
		$(this).attr('action', HTTP_ROOT+'elements/'+$('#quarter', $(this)).val()+'-'+$('#label', $(this)).val());
		return true;
	});


}); // fin document.ready