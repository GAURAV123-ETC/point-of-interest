<%@ include file="header.jsp"%>
					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                      String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Registration Success   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>



<!-- ********************************************************************************************************* -->





<div class="tab-content">
					<div class="tab-pane active" id="horizontal-form">
				

<form method="post" action="adduser2.jsp" >
<center><h1>User Registration</h2></center>
	<table  align=center cellpadding="10"><tr><td>
<tr><h3><td><input class="form-control1"  type="text" name="name" required placeholder="Full Name" style="width:350px;">
<tr><h3><td><input class="form-control1"  type="text" name="email" required placeholder="Email" style="width:350px;">
<tr><h3><td><input class="form-control1"  type="text" name="mobile" required placeholder="Mobile Number" style="width:350px;">
<tr><h3><td><input class="form-control1"  type="password" name="pwd" required placeholder="Password" style="width:350px;">

 
	

<tr><td align="right"><br><h3><input class="form-control1"    type="submit" value="Next >>">
</table>


</form>
</div></div>
<br><br><br><br><br><br>
<%@ include file="footer.jsp"%>



