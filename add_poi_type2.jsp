<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%
int i=0;

String st2=request.getParameter("st2");
%>
<%

Connection con1=databasecon.getconnection();
//System.out.println(con1);

	Statement st = con1.createStatement();
	try{
	i=st.executeUpdate("insert into poitype values('"+st2+"')");
			response.sendRedirect("add_poi_type.jsp");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("add_poi_type.jsp?fail");
		return;
	}
	

%>	
<%@ include file="footer.jsp"%>
