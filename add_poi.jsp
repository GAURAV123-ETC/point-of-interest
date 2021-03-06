<%@ include file="header.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<script type="text/javascript">
// google_dynamic_map.js file
// Map Initialize function

function initialize()
{
	             document.getElementById("button2").style.visibility="hidden";
	// Set static latitude, longitude value
	var latlng = new google.maps.LatLng(17.437903435197942, 78.4460557661514);
	// Set map options
	var myOptions = {
		zoom: 16,
		center: latlng,
		panControl: true,
		zoomControl: true,
		scaleControl: true,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	// Create map object with options
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	// Create and set the marker
	marker = new google.maps.Marker({
		map: map,
		draggable:true,
		position: latlng
	});

	// Register Custom "dragend" Event
	google.maps.event.addListener(marker, 'dragend', function() {

		// Get the Current position, where the pointer was dropped
		var point = marker.getPosition();
		// Center the map at given point
		map.panTo(point);
		// Update the textbox
		document.getElementById('latitude').value=point.lat();
		document.getElementById('longitude').value=point.lng();
	});
}
</script>



<!-- ********************************************************************************************************* -->


 <script>
var country,state,city,pinCode;
function createCORSRequest(method, url) {
  var xhr = new XMLHttpRequest();

  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari.
    xhr.open(method, url, true);

  } else if (typeof XDomainRequest != "undefined") {
    // XDomainRequest for IE.
    xhr = new XDomainRequest();
    xhr.open(method, url);

  } else {
    // CORS not supported.
    xhr = null;
  }
  return xhr;
}

function getLocationDetails()
{

hide();
latitude1=document.getElementById("latitude").value;
longitude1=document.getElementById("longitude").value;
alert(' Get started retrieve the Geo Locations');
	//	          alert(' Latitude Value= '+latitude1);
		//		  		          alert(' Longitude Value= '+longitude1);

var url="http://maps.googleapis.com/maps/api/geocode/json?latlng="+
        latitude1+","+longitude1+"&sensor=true";
    var xhr = createCORSRequest('POST', url);
           if (!xhr) {
             alert('CORS not supported');
           }
         
           xhr.onload = function() {
        
            var data =JSON.parse(xhr.responseText);
            
            if(data.results.length>0)
            {
            
            var locationDetails=data.results[0].formatted_address;
            var  value=locationDetails.split(",");
            
            count=value.length;
            
             country=value[count-1];
             state=value[count-2];
             city=value[count-3];
             pin=state.split(" ");
             pinCode=pin[pin.length-1];
             state=state.replace(pinCode,' ');         

				  		          alert(' Country Name= '+country);
								  				  		          alert(' State Name= '+state);
																  				  		          alert(' City Name= '+city);
																								  				  		          alert(' Pincode Value= '+pinCode);
             document.getElementById("country").value=country;
			 document.getElementById("state").value=state;
			 document.getElementById("city").value=city;
			 document.getElementById("pinCode").value=pinCode;
             document.getElementById("button").style.visibility="hidden";
              document.getElementById("button2").style.visibility="visible";
            }
            else
            {
               "No location available for provided details.";
            }
            
           };

           xhr.onerror = function() {
               alert('Woops, there was an error making the request.');
               
           };
        xhr.send();
 return false;        
}

function hide()
{
             document.getElementById("button2").style.visibility="hidden";
//document.getElementById("button2").style.visibility="hidden";

}
</script>





<form method="post" action="add_poi2.jsp" >
<h2>Add POI's for sharing.</h2><br>
<table align="center">
<tr>
	<td colspan="2">	<head>
		<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript" src="google_dynamic_map.js"></script>
	</head>
	<body onload="initialize();">
		
		<div id="map_canvas" style="width:920px;height:400px;border:solid black 1px;"></div>
</td>

<tr><td><br><h3>Latitude<br><input class="form-control1"  class="form-control"  type="text" name="latitude" id="latitude" style="width:350px;" value="17.436951506722654">
<td><br>	<h3>Longitude<br><input class="form-control1"  class="form-control"  type="text" name="longitude" id="longitude" style="width:350px;" value="78.44502579788968" >

<input   type="hidden" name="name" value="<%=request.getParameter("name")%>">
<input   type="hidden" name="email" value="<%=request.getParameter("email")%>">
<input   type="hidden" name="tele" value="<%=request.getParameter("tele")%>">
<input   type="hidden" name="addr" value="<%=request.getParameter("addr")%>">
<input   type="hidden" name="ptype" value="<%=request.getParameter("ptype")%>">
<input   type="hidden" name="pwd" value="<%=request.getParameter("pwd")%>">

<input class="form-control"  type="hidden" name="country"id="country">
<input class="form-control"  type="hidden" name="state"id="state">
<input class="form-control"  type="hidden" name="pinCode"id="pinCode">
<input class="form-control"  type="hidden" name="city"id="city">

</tr>
</table>


	<table align="center" cellspacing="10">

			<tr><td><input  class="form_settings1"  type="submit"  value="Register" id="button2"/></div>
			<input   class="form_settings1" id="button" type="button" onclick="getLocationDetails()"  value="getGeo"/>

</tr>
</table>


</form><br><br>



<%@ include file="footer.jsp"%>
