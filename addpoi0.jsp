<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="header.jsp"%>

					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                      String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;POI Page created Successfully   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>


			<h3 class="agileits-title w3title2">Page Creation of POI</h3>

			
			<form action="add_poi.jsp" method="post">
				<div class="col-sm-6 contact-left">
					<input type="text" name="name" placeholder="POI Name" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="text" name="tele" placeholder="Mobile Number" required="">
	
<%Connection con1=databasecon.getconnection();
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from poitype");

%>

<select  name="ptype" required  >
	<option value="">Choose POI Type

<% while(rs.next()){
%>


	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>

<%
}
		%>
</select>
					<input type="password" name="pwd" placeholder="Password" required="">
				</div>
				<div class="col-sm-6 contact-right"> 
					<textarea name="addr" placeholder="Address" required=""></textarea>
					<input type="submit" value="Submit" >
				</div>
				<div class="clearfix"></div>
			</form>

<%@ include file="footer.jsp"%>