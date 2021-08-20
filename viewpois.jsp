<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="aheader.jsp"%>

<h1>Point-of-interests</h2><br><br>



<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs2=null;
%>
			<div class="grid_3 grid_5 ">
				<div class="col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>POI Id</th>
								<th>Poi Category</th>
								<th>POI Name</th>
								<th>Email</th>
								<th>Contact</th>
							<th>City</th>
							<th>Address</th>
							</tr>
						</thead>

<%int i=0;
rs2=st2.executeQuery("select * from poi order by pid ");

while(rs2.next()){

%>
				<tbody>
							<tr>
								<td><%=rs2.getString("pid")%></td>
								<td><span class="badge badge-primary"><%=rs2.getString("ptype")%></span></td>
								<td><span class="badge badge-success"><%=rs2.getString("pname")%></span></td>
								<td><%=rs2.getString("pemail")%></td>
								<td><%=rs2.getString("ptele")%></td>

								
								<td><%=rs2.getString("city")%></span></td>
								<td><%=rs2.getString("addr")%></td>

<%
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
