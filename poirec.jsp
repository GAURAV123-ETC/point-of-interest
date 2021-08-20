<%@ include file="uheader.jsp"%>
<%@ page  import="java.util.Vector" import="java.sql.*" import="databaseconnection.*"%>
<div class="grid_3 grid_5 ">
				<h3 class="w3ls-hdg w3layouts ">Choose your favourite POI categories</h3>
	<form method="post" action="poirec2.jsp">
		<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String s="select * from poitype ";
//System.out.println(s);
ResultSet rs1=st.executeQuery(s);

while(rs1.next())
	{
%>
				<ol class="breadcrumb">
					<strong><li class="active"><input type="checkbox" checked name="poitype"  value="<%=rs1.getString(1)%>">&nbsp;&nbsp;&nbsp;<%=rs1.getString(1)%></li>
			</strong>	</ol>
			
	<%
}


%>
<input type="submit" value="POILP" class="form-control1" >
</div>

	</form>

<%
}
catch(Exception e){
System.out.println(e);
}
%>


<br><br>



<%@ include file="footer.jsp"%>
