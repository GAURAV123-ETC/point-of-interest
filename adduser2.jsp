
<%@ include file="header.jsp"%>



<!DOCTYPE html>
<html>
    <head>


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

//hide();
latitude1=document.getElementById("latitude").value;
longitude1=document.getElementById("longitude").value;
//alert(' Get started retrieve the Geo Locations');
	     //     alert(' Latitude Value= '+latitude1);
				  		  //        alert(' Longitude Value= '+longitude1);

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

				  		        //  alert(' Country Name= '+country);
								  				  		       //   alert(' State Name= '+state);
																  				  		     // alert(' City Name= '+city);
																					  		        //  alert(' Pincode Value= '+pinCode);
             document.getElementById("city").value=city;
			             document.getElementById("country").value=country;
						              document.getElementById("state").value=state;

             document.getElementById("button").style.visibility="hidden";
             document.getElementById("button2").style.visibility="hidden";
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
 </script>





















        <script src="http://maps.google.com/maps/api/js?sensor=false">
        </script>
        <script>

            if (navigator.geolocation)
            {
                navigator.geolocation.getCurrentPosition(showCurrentLocation);
            }
            else
            {
               alert("Geolocation API not supported.");
            }

            function showCurrentLocation(position)
            {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                var coords = new google.maps.LatLng(latitude, longitude);

                var mapOptions = {
                zoom: 15,
                center: coords,
                mapTypeControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            //create the map, and place it in the HTML map div
            map = new google.maps.Map(
            document.getElementById("mapPlaceholder"), mapOptions
            );

            //place the initial marker
            var marker = new google.maps.Marker({
            position: coords,
            map: map,
            title: "Current location!"
            });
			//getLocationDetails();
            }
        </script>
    </head>
    <style>
    #mapPlaceholder {
        height: 400px;
        width: 700px;
    </style>
    <body>
        <div>
        <h2>Get Location Details..</h2>
        <!-- 
		
		
		
		
		
		<div id="mapPlaceholder"></div> 
		
		
		
		
		
		
		
		-->
        </div>
    </body>

	

<br>
<div class="form_settings">
<input type="button" class="form-control1"   onclick="getLocation()" value="Get Location"  size="30"id="button2"> 
</div>
<script>
var x = document.getElementById("demo");

function getLocation() {

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
//---------------------------------------
//hide();
latitude1=document.getElementById("latitude").value;
longitude1=document.getElementById("longitude").value;
//alert(' Get started retrieve the Geo Locations');

				  		  //        alert(' Longitude Value= '+longitude1);

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

				  		        //  alert(' Country Name= '+country);
								  				  		       //   alert(' State Name= '+state);
																  				  		     // alert(' City Name= '+city);
																					  		        //  alert(' Pincode Value= '+pinCode);
             document.getElementById("city").value=city;
			             document.getElementById("country").value=country;
						              document.getElementById("state").value=state;

             document.getElementById("button").style.visibility="hidden";
             document.getElementById("button2").style.visibility="hidden";
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

//---------------------------------------
}

function showPosition(position) {
		document.getElementById('latitude').value=position.coords.latitude ;
				document.getElementById('longitude').value=position.coords.longitude ;
}
</script>
<form method="post" action="adduser3.jsp">
<br>

								<input type="hidden" name="name" required style="width:350px;"  value="<%=request.getParameter("name")%>">
								<input type="hidden" name="email" required placeholder="Email" style="width:350px;"  value="<%=request.getParameter("email")%>">

								<input type="hidden" name="mobile" required placeholder="Mobile Number" style="width:350px;"  value="<%=request.getParameter("mobile")%>">
								<input type="hidden" name="pwd" required placeholder="Password" style="width:350px;"  value="<%=request.getParameter("pwd")%>">




	
<table cellpadding="5">
<tr>
	<td><input size="100"  class="form-control1" type="text" id="latitude" Placeholder ="latitude" name="latitude" required/><td><input size="100"  type="text" id="longitude" class="form-control1" Placeholder="Longitude" name="longitude"/>

</td>
</tr>
<tr>
	<td><input class="form-control1" type="text" name="city" Placeholder="City"  id="city" required></td><td><input type="text" name="state"  id="state" class="form-control1" Placeholder="State" required>
</tr>
<tr>
	<td>	<input class="form-control1" type="text" name="country" placeholder="Country"  id="country" required></td><td align="right"><input  class="form-control1" type="submit"  value="Save"/>
</tr>
</table>


</form>
</html>

<%@ include file="footer.jsp"%>