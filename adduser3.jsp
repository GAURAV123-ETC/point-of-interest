

<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*"%>



<%
	int i=1;

		Random random = new Random();
		i=Math.abs(random.nextInt());

%>
<%


String name=request.getParameter("name");
String email=request.getParameter("email");

String mobile=request.getParameter("mobile");
String pwd=request.getParameter("pwd");
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String country=request.getParameter("country");
String state=request.getParameter("state");

String city=request.getParameter("city").trim();


%>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


int q= st.executeUpdate("insert into users values('"+i+"','"+name+"','"+email+"',  '"+mobile+"','"+latitude+"','"+longitude+"','"+city+"','"+state+"','"+country+"','"+pwd+"') ");

if(q>0)
{
	response.sendRedirect("profilepic.jsp?id="+email+"");
}
else
	response.sendRedirect("adduser.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
