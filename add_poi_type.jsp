
<%@ include file="aheader.jsp"%>



<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>




<%
int count=1;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from poitype");
%>	
<h1>


<font size="" color="#1d5ea5"><b>Add POI Category</h1></h2>
<br>
                  <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>
<br><br>
</font>
<table cellpadding="10">


<tr><td><h3><font size="" color="#004f9d"><b><b>No&nbsp;&nbsp;&nbsp;<td><h3><font size="" color="#004f9d"><b><b>Type Name

<%while(rs.next())
	{
		%>
<tr><td><font size="+2"><%=count++%><br><td><font size="+2"><%=rs.getString(1)%><br>


<%
	}
%>	
<form method="post" action="add_poi_type2.jsp">
	

<tr><td><td><input type="text" class="form-control1" name="st2" size="40" required>&nbsp;&nbsp;<input type="submit" value="   ADD  " class="form-control1">


                                              
											 
</table>
</form>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>