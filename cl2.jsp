
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("latitude");
String b= request.getParameter("longitude");
String c= request.getParameter("city").trim();
String e= request.getParameter("country").trim();
String d= request.getParameter("state").trim();
String name=null,u=null,test2=null,city=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "update  users set lat='"+a+"', lon='"+b+"', city='"+c+"', state='"+d+"', country='"+e+"' where email='"+session.getAttribute("email")+"'";
st1.executeUpdate(sss1);
		response.sendRedirect("u_home.jsp?id=suc");
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>