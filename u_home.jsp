<%@ include file="uheader.jsp"%>
	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request Sent '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Your Post is posted successfully!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("suc"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Location Updated successfully!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request already Sent '); </script>");
                                                       }

			    %>
			<h3>Welcome <%=session.getAttribute("name")%></h2> </h6>
				
			<div class="col-md-6 w3ls_welcome_right"> 
				<div class="flexslider">
					<ul class="slides">
						<li>	
							<div class="agileits_w3layouts_welcome_grid">
								<img src="view1.jsp?id=<%=email%>" alt=" " width="500" height="300" />
							</div>
						</li>
						
					</ul>
				</div> 
			</div>
			<div class="col-md-6 w3ls_welcome_left"> 
				<div class="w3ls_welcome_right1">
<br>
	<div class="col-md-12">
					<div class="list-group list-group-alternate"> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=session.getAttribute("name")%></h4></font></span> <i class="ti ti-email"></i> Name </a> 
						<a href="#" class="list-group-item"><span class="badge badge-primary"><h4><font color="#fff"><%=session.getAttribute("email")%></h4></font></span> <i class="ti ti-eye"></i> Email </a> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=session.getAttribute("uid")%></h4></font></span> <i class="ti ti-headphone-alt"></i> UserId </a> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=session.getAttribute("city")%></h4></font></span> <i class="ti ti-comments"></i> City </a> 
						<a href="#" class="list-group-item"><span class="badge badge-danger"><h4><font color="#fff"><%=session.getAttribute("ulat")%></h4></font></span> <i class="ti ti-headphone-alt"></i> Latitude </a> 
						<a href="#" class="list-group-item"><span class="badge badge-danger"><h4><font color="#fff"><%=session.getAttribute("ulon")%></h4></font></span> <i class="ti ti-headphone-alt"></i>  Longitude </a> 
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
						
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>



<br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>