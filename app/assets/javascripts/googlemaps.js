// Initialize Google Maps
function initialize() {
        var myOptions = {
          center: new google.maps.LatLng(42.3583, -71.0603),
          zoom: 14,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
		  panControl: false,
		  streetViewControl: false,
		  mapTypeControl: false,	  
		  zoomControl: true,
		  zoomControlOptions: {
			position: google.maps.ControlPosition.LEFT_CENTER
		  },
		  scaleControl: false,
        };
        var map = new google.maps.Map(document.getElementById("map"),
            myOptions);
}

// Set Google Maps div dynamically; change automatically on window resize
jQuery(document).ready(function() {
	function resizeFrame() {
		$("#map").height( $(window).height() - $('#signup-bar').height() - $('footer').height() - 50 );
	}
	resizeFrame();
	
	$(window).resize(function(){
		resizeFrame();
	});
});