<%@ include file="uheader.jsp"%>
<%@ page  import="java.util.Vector" import="java.sql.*" import="databaseconnection.*"%>
<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=600,width=800');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String s="select * from friends where user1='"+session.getAttribute("uid")+"' ";
System.out.println(s+">>>>>");
ResultSet rs1=st.executeQuery(s);

Vector v=new Vector();
while(rs1.next())
	{
	v.add(rs1.getString(2));
}
System.out.println(v.size()+">>>>>");
String s1="";
int i=0;
	
for(Object o:v)
{

	if(i==0)
	{
	s1=" userid='"+o+"' ";
	++i;
	}else{
	s1=s1+" or userid='"+o+"' ";
	}

}

String sql="SELECT * FROM post where "+s1;
System.out.println(sql+"-----");


ResultSet rs=st.executeQuery(sql);


%>
			<div class="grid_3 grid_5 w3">
							<h3 class="w3ls-hdg">Your Friends Posts</h3>

<%


while(rs.next()){
%>
<br><br><br>
				<div class="well w3l">

<table>
<tr><td><font size="4" color="#4991de"><b><%=rs.getString("name")%> </b></font><font size="4" color="#89bbe4"><%=rs.getString("for_")%> at</font>
<tr><td><font size="3" color="#6f9570"><b><%=rs.getString("place")%> 
<tr><td><font size="3" color="#7bc2fd"><b><%=rs.getString("post")%>



<tr><td>
<a href="view.jsp" onclick="return popitup('view.jsp?lat2=<%=rs.getString("lat")%>&&lon2=<%=rs.getString("lon")%>')"
	><img src="images/Reg.png" width="200" alt="" /></a></td></tr>
</table>
</div>
<%}



%>
</div>
<%
}
catch(Exception e){
System.out.println(e);
}
%>


<br><br>



<%@ include file="footer.jsp"%>
