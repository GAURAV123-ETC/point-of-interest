<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="uheader.jsp"%>
<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=600,width=800');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

<h1>Point-of-interest Recommendation for Location
Promotion</h2><br><br>



<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();


ResultSet rs=st.executeQuery("select * from calc order by val desc ");
ResultSet rs2=null;
%>
			<div class="grid_3 grid_5 ">
				<div class="col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Sno</th>
								<th>Poi Category</th>
								<th>POI Name</th>
								<th>City</th>
								<th>Zip</th>
								<th>View Map</th>
							</tr>
						</thead>

<%int i=0;
while(rs.next()){
rs2=st2.executeQuery("select * from poi where ptype='"+rs.getString(1)+"' ");

while(rs2.next()){

%>
				<tbody>
							<tr>
								<td><%=++i%></td>
								<td><span class="badge badge-primary"><font size="+1"><%=rs2.getString("ptype")%></span></td>
								<td><font size="+2"><%=rs2.getString("pname")%></td>
								<td><%=rs2.getString("city")%></span></td>
								<td><%=rs2.getString("zip")%></td>
								<td><a href="view.jsp" onclick="return popitup('view.jsp?lat2=<%=rs2.getString("lat")%>&&lon2=<%=rs2.getString("lon")%>')"
	><img src="images/icon-routeMap.svg" height="50" width="50" alt="" /></a></td>
							</tr>

<%
}
}
%>

					</table>                    
				</div>
				</div>


<%



}
catch(Exception e){
System.out.println("11="+e);
}
%>
<%@ include file="footer.jsp"%>
