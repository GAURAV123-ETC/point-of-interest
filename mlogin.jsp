<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from poi where pemail='"+a+"' && pwd='"+b+"' ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

//
		session.setAttribute("pid",rs1.getString(1));
		response.sendRedirect("poi_home.jsp");
		
		}

		else{
		response.sendRedirect("index.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>