<!DOCTYPE html>
<html>
	<head>
		
		<meta name="layout" content="main" />
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		
		<style type="text/css">
		  html { height: 100% }
		  body { height: 100%; margin: 0; padding: 0 }
		  #map_canvas 
		  { 
		  	height: 60%;
		  	width: 100%;
		  }
		</style>
	
	<g:javascript library="prototype"></g:javascript>
	<g:javascript base="http://maps.googleapis.com/maps/api/" src="js?sensor=true"></g:javascript>

	<g:javascript>
		var map; // global map variable
		
		function showDetail(arg)
	  	{	  		
			var url = "getDetails/" + arg.featureData.id
			// notice the use of a proxy to circumvent the Same Origin Policy.
			
			new Ajax.Request(url, {
			  method: 'get',
			  onSuccess: function(transport) {
			    document.getElementById("detail").innerHTML=transport.responseText
			  }
			});
	  	}
		
		function initialize() {
			var mapOptions = {
			zoom: 8,
			mapTypeId: google.maps.MapTypeId.ROADMAP};
			    
			map = new google.maps.Map(
				document.getElementById("map_canvas"),
				mapOptions);
	
			// shooting places layer
			var shootingPlacesOverlayOptions = {
				clickable: true,
				preserveViewport: true
			}
			
			var r = Math.floor(Math.random() * 1000)
			var shootingPlacesOverlay = new google.maps.KmlLayer('${grailsApplication.config.grails.serverURL}/placemarks' + r + '.kml')
			google.maps.event.addListener(shootingPlacesOverlay, 'click', showDetail);
			shootingPlacesOverlay.setMap(map)
			
			// restrictions layers
			var restrictionsLayerOptions = {
				clickable: false,
				preserveViewport: true
			}
			
			var restrictedAreaOverlay = new google.maps.KmlLayer(
				'http://github.com/hack4reno/hack4reno-datasets/raw/master/Firearms-Restrictions/FirearmsRestrictions_clean.kmz',
				restrictionsLayerOptions)
			restrictedAreaOverlay.setMap(map)
			
			var countylinesAreaOverlay = new google.maps.KmlLayer(
				'http://github.com/hack4reno/hack4reno-datasets/raw/master/Firearms-Restrictions/nvcountiesJan11.kmz',
				restrictionsLayerOptions)
			countylinesAreaOverlay.setMap(map)
			
			
			//var blmOverlay = new google.maps.KlmLayer(
			//	'http://github.com/hack4reno/hack4reno-datasets/raw/master/Firearms-Restrictions/BLM_Land.kmz',
			//	restrictionsLayerOptions
			//)
			//blmOverlay.setMap(map)
			
		} 
	  
		function addMarker()
		{
			var markerOptions = {
				clickable: true,
				title: 'my new marker',
				visible: true,
				position: map.getCenter()
		  	}
	
			var marker = new google.maps.Marker(markerOptions)
			marker.setMap(map)
		}
		
	</g:javascript>
		
	</head>
	<body onload="initialize()">
		<div id="map_canvas"></div>
		<!--  <input type="button" value="Click me!" onclick="addMarker()" /> -->
		<div id="detail" />
	</body>
</html>
