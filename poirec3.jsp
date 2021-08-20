<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="uheader.jsp"%>

<h2>Learning influence between users</h2><br><br>
<%
String poitype[] =(String[])session.getAttribute("poitype");
Set<String> fr =(Set<String>)session.getAttribute("fr");
Set<String> frfr =(Set<String>)session.getAttribute("frfr");
%>



<%

try{
	double b=0.5;
		double puv=0.0;
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
st.executeUpdate("delete from calc");
ResultSet rs=null;

for(String pt:poitype){
st.executeUpdate("insert into calc values('"+pt+"','0')");
}

for(String fr1:fr){
rs=st.executeQuery("select * from poip where userid='"+fr1+"' and city='"+session.getAttribute("city")+"' ");
while(rs.next()){

puv=b*rs.getDouble("distance")+(1-b)*2; //where top-n top=2. now n=0;
System.out.println(puv);
st2.executeUpdate("update  calc set val=val+'"+puv+"' where poitype='"+rs.getString("cat_")+"' ");

}

}


for(String fr2:frfr){
rs=st.executeQuery("select * from poip where userid='"+fr2+"' and city='"+session.getAttribute("city")+"' ");
while(rs.next()){

puv=b*rs.getDouble("distance")+(1-b)*1; //where top-n top=2. now n=0;
System.out.println(puv);
st2.executeUpdate("update  calc set val=val+'"+puv+"' where poitype='"+rs.getString("cat_")+"' ");

}
}

rs=st.executeQuery("select * from calc ");

%>
			<div class="grid_3 grid_5 ">
				<div class="col-md-8">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Poi Category</th>
								<th>P u-->v Score</th>
							</tr>
						</thead>

<%

while(rs.next()){
%>
				<tbody>
							<tr>
								<td><%=rs.getString(1)%></td>
								<td><%=rs.getString(2)%></span></td>
							</tr>

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
<form method="post" action="poirec4.jsp">
	<input type="submit" class="form-control1" value="Get POI Data">
</form>
<%@ include file="footer.jsp"%>
