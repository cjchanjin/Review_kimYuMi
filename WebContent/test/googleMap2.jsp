<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 0; padding: 0; }
      #map { height: 90%; }
      #button { height: 10%; }
    </style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
   <script type="text/javascript">
window.onload=function(){
	//위치정보를 확인할 수 있는 브라우저인지 확인
	if(navigator.geolocation == undefined){
		alert("위치 정보 기능을 지원하지 않습니다!")
		return;
	}
}

// 사용하려면 body의 onload로 걸어줌 (핸드폰 환경에 따라 브라우저 크기 변경)
function detectBrowser() {
	var useragent = navigator.userAgent;
	var mapdiv = document.getElementById("map");

	if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
		mapdiv.style.width = '100%';
		mapdiv.style.height = '80%';
	} else {
		mapdiv.style.width = '600px';
		mapdiv.style.height = '800px';
	}
}


// 전역 변수 : map 변수, 현재 위치 변수 (위도, 경도), 마커 배열
var map;
var myLatlng;
var myLat;
var myLng;
var zoom;
var myMarkers = [];

function initMap() {
	var priorInfowindow;
	if (navigator.geolocation) {
		// 현재 위치 가져오기 : getCurrentPosition(Success, Fail, (Option));
		navigator.geolocation.getCurrentPosition(function(position) {
			alert('getCurrentPosition Success!');
			myLatlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
			myLat = position.coords.latitude;
			myLng = position.coords.longitude;

                        // 줌 값과 반경 범위
			addMarker(16,500);

		// getCurrentPosition (success, fail), fail 함수
		}, function() {
				alert("현재 위치를 가져올 수 없습니다. 디바이스의 설정 정보에서 위치 검색을 허용하세요.");
		});
	// nagitor.geolocation 자체가 안됐을 경우
	} else {
		//맵 자체가 안될 경우
		alert("해당 디바이스는 지도를 사용할 수 없는 디바이스입니다.");
	}
}


// 마커 생성 및 각 마커 별 infoWindow 생성
function addMarker(Zoom, Rad){
	var priorInfowindow;
		var mapOptions = {
			zoom: Zoom,
			center: myLatlng
		}
		map = new google.maps.Map(document.getElementById("map"), mapOptions);
		
		$.getJSON( "DB에서 데이터를 가져와 뿌린다면 getJson으로 데이터를 가져온다, 
                            이 DB는 넘겨받은 Rad값에 따라 해당 km범위를 계산하여 해당 km안에 있는 유저데이터를 
                            JSON으로 encode하여 보내도록 하는 DB로 세팅되어 있다")
			.done(function( data ) {
				alert('getJSON Success!');
				$.each(data, function(i, item){

					var addLatlng = new google.maps.LatLng(item.LAT, item.LNG);
					var contentString =  '<h1>' + item.TEL +'</h1> <a href="" />';
					var infowindow = new google.maps.InfoWindow({
									content: contentString,
					                                           });
					var marker = new google.maps.Marker({
							position: addLatlng,
							//map: map,
							title: ''
									   });
					// 생성한 마커는 배열에 넣음
					myMarkers.push(marker);

					// 마커의 Click Event, 기존에 클릭한 마커가 있다면 해당 infoWindow를 닫고 포커스를 이동함
					marker.addListener('click', function() {
						if(priorInfowindow){
							priorInfowindow.close();
						}
                                                // 기존 InfoWindow를 저장해놔서, 다른 마커 클릭하면 기존 마커 닫기
						priorInfowindow = infowindow;
						map.setZoom(16);
						map.setCenter(marker.getPosition());
						infowindow.open(map, marker);
										});
					marker.setMap(map);
				}); // end each
			}) // end getJson
			.fail(function(error){
				alert('JSON데이터를 가져올 수 없습니다.' + error);
			});
} // end addMarker

// 단지 지도에서 보이는 마커를 제거함, 마커 자체는 삭제 안 됨 => 마커 삭제는 clear후에 배열을 초기화 시켜야 함
function clearMarkers(){
	alert('clear');
	for(var i=0; i<myMarkers.length; i++){
		myMarkers[i].setMap(null);
	}
	// 배열 초기화
	myMarkers = [];
}

function click1km(){
	clearMarkers();

	addMarker(16,500);
}

function click2km(){
	clearMarkers();

	addMarker(15,1000);
}

function click3km(){
	clearMarkers();

	addMarker(14,1500);
}


</script>
    
    <script  async defer
  			    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCC2vEdU-jG1e3XXsSZUlH0m2BbjKbRTA&callback=initMap">
   </script>
   
  </head>
  <body onLoad="detectBrowser()">
	<div id="map"></div>
	<div id="button">
		<input type="button" onclick="click1km()"; value = "1km"></input>
		<input type="button" onclick="click2km()"; value = "2km"></input>
		<input type="button" onclick="click3km()"; value = "3km"></input>
	</div>
  </body>
</html>