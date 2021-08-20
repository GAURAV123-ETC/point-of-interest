<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%

String lat1 = "";
String lon1 = "";

	lat1=(String)session.getAttribute("ulat");
	lon1=(String)session.getAttribute("ulon");


String lat2=request.getParameter("lat2");
String lon2=request.getParameter("lon2");

System.out.println(lat1);
System.out.println(lon1);
System.out.println(lat2);
System.out.println(lon2);

%>


<form method="post" name="ff" >
<input type="hidden" name="lat1" id="lat1"  value="<%=lat1%>"/>
<input type="hidden" name="lon1" id="lon1"  value="<%=lon1%>"/>
<input type="hidden" name="lat2" id="lat2"  value="<%=lat2%>"/>
<input type="hidden" name="lon2" id="lon2"  value="<%=lon2%>"/>

<!--*********************************************************-->

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">

    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <style>
      #directions-panel {
        height: 100%;
        float: right;
        width: 390px;
        overflow: auto;
      }

      #map-canvas {
        margin-right: 400px;
      }

      #control {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }

      @media print {
        #map-canvas {
          height: 500px;
          margin: 0;
        }

        #directions-panel {
          float: none;
          width: auto;
        }
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script>
	var lat1=document.ff.lat1.value;
var lon1=document.ff.lon1.value;
	var lat2=document.ff.lat2.value;
var lon2=document.ff.lon2.value;

var directionsDisplay;
var directionsService = new google.maps.DirectionsService();

function initialize() {
  directionsDisplay = new google.maps.DirectionsRenderer();
  var mapOptions = {
    zoom: 9,
    center: new google.maps.LatLng(17.436951506722654, 78.44502579788968)
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(document.getElementById('directions-panel'));

  var control = document.getElementById('control');
  control.style.display = 'block';
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);
}

function calcRoute() {
  var start = new google.maps.LatLng(lat1, lon1);
  var end = new google.maps.LatLng(lat2, lon2);
  var request = {
    origin: start,
    destination: end,
    travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>


  </head>

  <body>
    <div id="control">
	<input type="button" value="Show Direction" onclick="calcRoute();">
	</div>
    <div id="directions-panel"></div>
    <div id="map-canvas"></div>
  </body>
</html>
<!--*********************************************************-->









<br><br><br><br>

</form>