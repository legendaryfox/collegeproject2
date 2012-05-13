jQuery(document).ready(function() {
	
	jQuery(".nav-sub-event").click(function () {
		jQuery('.nav-sub-container').slideUp('500');
		
		if (jQuery(this).find('.nav-sub-container').is(':hidden')) {
			jQuery(this).find('.nav-sub-container').slideDown();
		}
	  });
});