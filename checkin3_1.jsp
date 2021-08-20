<%@ page import="java.util.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*"  import="Geo.*" %>



<%!
	int i=0;
%>
<%
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String piCode=request.getParameter("pinCode");
String city=request.getParameter("city").trim();


String post=request.getParameter("post");
String for_=request.getParameter("for");
String poi=request.getParameter("poi");


%>

<%

String[] res=new String[9];
res=Details.main2(poi);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

int q= st.executeUpdate("insert into poip values('"+session.getAttribute("uid")+"','"+latitude+"','"+longitude+"','"+poi+"','"+res[1]+"','"+res[5]+"','"+post+"','"+for_+"','"+city+"','"+DistCalc.distance(res[6],res[7],latitude,longitude,"K")+"')");

st.executeUpdate("insert into post values('"+session.getAttribute("uid")+"','"+session.getAttribute("name")+"','"+latitude+"','"+longitude+"','"+res[1]+"','"+post+"','"+for_+"','"+city+"')");




response.sendRedirect("u_home.jsp?id=succ");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
