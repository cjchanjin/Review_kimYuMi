<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height:  600px;
        width: 500px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    
  <script>
      var map, infoWindow, place;
      function initMap() {
    	  // 지도 중심에 표시할 장소 좌표 정보
    	 	place = {lat: 35.7983517256, lng: 128.5210601029};
    	  //지도 구현
       		map = new google.maps.Map(document.getElementById('map'), {
       		center: place,
       		zoom: 14
        });
    	  
 		//현위치 정보 구현      	
    	  /* infoWindow = new google.maps.InfoWindow;
       	// Try HTML5 geolocation.
            if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                  lat: position.coords.latitude,
                  lng: position.coords.longitude
                };

                infoWindow.setPosition(pos);
                infoWindow.setContent('Location found.');
                infoWindow.open(map);
                map.setCenter(pos);
              }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
              });
            } else {
              // Browser doesn't support Geolocation
              handleLocationError(false, infoWindow, map.getCenter());
            }
          }
      	
	      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	          infoWindow.setPosition(pos);
	          infoWindow.setContent(browserHasGeolocation ?
	                                'Error: The Geolocation service failed.' :
	                                'Error: Your browser doesn\'t support geolocation.');
	          infoWindow.open(map);
	        } */
    	  
    	  // 해당 장소 마크표시
       		marker = new google.maps.Marker({
       		position : place,
       		map : map
          });
      }
    </script>
    
    <script  async defer
  			    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCC2vEdU-jG1e3XXsSZUlH0m2BbjKbRTA&callback=initMap">
   </script>
   
  </body>
</html>