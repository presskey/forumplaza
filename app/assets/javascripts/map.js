google.maps.visualRefresh = true;

var map;
function initialize() {
  var mapOptions = {
    zoom: 18,
    center: new google.maps.LatLng(50.4408, 30.357885),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map'), mapOptions);

  var infowindow = new google.maps.InfoWindow({
      content: "<b>Forum Plaza</b><br>Киев, ул. Петропавловская 14-Е"
  });

  var fpMarker = new google.maps.Marker({
	 position: new google.maps.LatLng(50.44085, 30.3568),
	 map: map,
	 title: 'Forum Plaza',
	 icon: '/assets/custom_marker.png'
   });

  google.maps.event.addListener(fpMarker, 'click', function() {
	infowindow.open(map, fpMarker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);