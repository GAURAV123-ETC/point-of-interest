<%@ include file="uheader.jsp"%>


<%@ page import="java.util.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*"  import="Geo.*" %>



<%
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String piCode=request.getParameter("pinCode");
String city=request.getParameter("city").trim();
%>




<%
Vector<String> v=(Vector)session.getAttribute("v");

%>
<form method="post" action="checkin4_1.jsp">
	<table>
<tr><td><br><h3>Post<br><input class="form-control1" required type="text" name="post"  placeholder="Your Post" style="width:550px;" >
<tr><td><br><h3>
<select name="for" class="form-control1" >
	<option value="Eating" selected="selected">Eating at</option>
	<option value="Playing" >Playing at</option>
	<option value="Traveling" >Traveling to</option>
		<option value="Looking" >Looking for</option>
		<option value="Exercising" >Exercising at</option>
				<option value="Celebrating" >Celebrating at</option>

</select>



<tr><td><br><h3>Place<br>
<input class="form-control1"  type="text" name="poi"  Placeholder="Enter your Place Name" style="width:550px;" required >


<tr><td><input type="submit"  class="form-control1" value="Post">
</table>
<input class="form-control"  type="hidden" name="latitude" value="<%=latitude%>" >
<input class="form-control"  type="hidden" name="longitude" value="<%=longitude%>" >
<input class="form-control"  type="hidden" name="pinCode" value="<%=piCode%>">
<input class="form-control"  type="hidden" name="city" value="<%=city%>">



</form><%@ include file="footer.jsp"%>
