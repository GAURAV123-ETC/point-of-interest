<%@ page import="java.util.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*"  import="Geo.*" %>



<%
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String city=request.getParameter("city").trim();


String post=request.getParameter("post");
String for_=request.getParameter("for");
String poi=request.getParameter("poi");


%>

<%

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

int q= st.executeUpdate("insert into post values('"+session.getAttribute("uid")+"','"+session.getAttribute("name")+"','"+latitude+"','"+longitude+"','"+poi+"','"+post+"','"+for_+"','"+city+"')");

response.sendRedirect("u_home.jsp?id=succ");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
