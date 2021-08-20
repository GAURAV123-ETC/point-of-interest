
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("ok")){
    out.println("<script type=text/javascript>alert('Operation Successfull !!')</script>");
	}
 %>

<% String mail=request.getParameter("email");
%> 
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from frequest where uto='"+email+"' and requ='req' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
<table width="50%">
<tr><td>
<tr><td> <h2>Requests from</h2>
<%
while(rs.next()){

%>
<tr><td colspan=2> <img src="view1.jsp?id=<%=rs.getString("ufrom")%>" alt="" width="300" height="200" >
<tr><td colspan=2> <br><h3>Email:	<%=rs.getString("ufrom")%><input type="hidden" name="mail" value="<%=rs.getString("uto")%>"/>
<tr >

<td>
<br>
<h4>
<a href="accept.jsp?mail=<%=rs.getString("ufrom")%>">Accept</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reject.jsp?mail=<%=rs.getString("ufrom")%>">Reject</a>

<%
}
}
catch(Exception e){
}
%>
</table>
<br><br><br><br>
<%@ include file="footer.jsp"%>
