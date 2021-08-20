<%@ include file="mheader.jsp"%>
	            <%@ page  import="CT.*" %>
      
			<h1>Welcome..</h2> <br><br><br> </h6>
				<%
				String[] res2=new String[9];
				res2=Details.main2((String)session.getAttribute("pid"));
				%>
	<div class="col-md-12">
					<div class="list-group list-group-alternate"> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=session.getAttribute("pid")%></h4></font></span> <i class="ti ti-email"></i> POI Id </a> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=res2[1]%></h4></font></span> <i class="ti ti-email"></i>POI Name </a> 
						<a href="#" class="list-group-item"><span class="badge badge-primary"><h4><font color="#fff"><%=res2[2]%></h4></font></span> <i class="ti ti-eye"></i> Email </a> 
						<a href="#" class="list-group-item"><span class="badge"><h4><font color="#fff"><%=res2[3]%></h4></font></span> <i class="ti ti-headphone-alt"></i> Contact </a> 
						<a href="#" class="list-group-item"><span class="badge badge-success"><h4><font color="#fff"><%=res2[4]%></h4></font></span> <i class="ti ti-comments"></i> Address </a> 
						<a href="#" class="list-group-item"><span class="badge badge-danger"><h4><font color="#fff"><%=res2[5]%></h4></font></span> <i class="ti ti-headphone-alt"></i> Category </a> 
						<a href="#" class="list-group-item"><span class="badge badge-warning"><h4><font color="#fff"><%=res2[8]%></h4></font></span> <i class="ti ti-headphone-alt"></i> City </a> 
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