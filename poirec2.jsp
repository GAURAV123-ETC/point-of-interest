<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="uheader.jsp"%>


<%
String poitype[] = request.getParameterValues("poitype");
session.setAttribute("poitype",poitype);
%>



<%

Set<String> fr= new HashSet<String>();
Set<String> temp= new HashSet<String>();
Set<String> frfr= new HashSet<String>();

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=null;
String user=(String)session.getAttribute("uid");
rs=st.executeQuery("select * from friends where user1='"+user+"' ");
while(rs.next())
{
			fr.add(rs.getString(2));
			temp.add(rs.getString(2));
}
for(String fr1:fr){
	rs=st.executeQuery("select * from friends where user1='"+fr1+"' and user2!='"+user+"' ");
	while(rs.next())
	{
			if(temp.add(rs.getString(2))){
			frfr.add(rs.getString(2));
			}
	}
}

}
catch(Exception e){
System.out.println("11="+e);
}
%>
			<div class="grid_3 grid_5 w3">
							<h3 class="w3ls-hdg">Your Direct Friends User Id's</h3>
				<%for(String f1:fr){%>
				<div class="well w3l">
				<%
				out.println(f1);
				%>
				</div>
				<%}%>
</div>

			<div class="grid_3 grid_5 w3">
							<h3 class="w3ls-hdg">Your Indirect Friends User Id's</h3>
				<%for(String f1:frfr){%>
				<div class="well w3l">
				<%
				out.println(f1);
				%>
				</div>
				<%}
session.setAttribute("fr",fr);
session.setAttribute("frfr",frfr);

				
				%>
</div><form method="post" action="poirec3.jsp">
	<input type="submit" class="form-control1" value="Load POILP Data">
</form>
<%@ include file="footer.jsp"%>
