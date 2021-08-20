<%@ page import="java.util.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*"  import="Geo.*" %>



<%!
	int i=0;
%>
<%
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String country=request.getParameter("country");
String state=request.getParameter("state");
String piCode=request.getParameter("pinCode");
String city=request.getParameter("city").trim();


%>
<%
Vector<String> v=new Vector<String>();


try{
	int i=0;
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sss1 = "update  users set lat='"+latitude+"', lon='"+longitude+"', city='"+city+"', state='"+state+"', country='"+country+"' where email='"+session.getAttribute("email")+"'";

ResultSet rs=st.executeQuery("select * from poi where city='"+city+"' ");
while(rs.next()){



v.add(rs.getString(1));
i++;



}




	session.setAttribute("v",v);
	response.sendRedirect("checkin3.jsp?latitude="+latitude+"&&longitude="+longitude+"&&city="+city+"&&piCode="+piCode+" ");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
