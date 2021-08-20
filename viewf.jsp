
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>



<%
try{
String f1[]=Details.main(email);
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from friends where user1='"+f1[0]+"' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>

<h3 class="agileits-title w3title2">Your Friends are</h3>
			<div class="agile_gallery_grids">	
			
				<div class="col-sm-4 col-xs-4 agile_gallery_grid"> 
			
<%
while(rs.next()){
String user=rs.getString(2);
System.out.println("11="+user);
rs2=st2.executeQuery("select * from users where uid='"+user+"' ");
while(rs2.next())
	{
			%>			
					<div class="w3ls_gallery_grid">
						<a href="view1.jsp?id=<%=rs2.getString("email")%>" class="lsb-preview wthree_p_grid" data-lsb-group="header" > 
						<img src="view1.jsp?id=<%=rs2.getString("email")%>" style="width:358px;height:251px;" class="img-responsive" />
							
	<div class="agileinfo_content_wrap">
								<div class="agileits_content">		
									<h3><%=rs2.getString("name")%></h3>
									<p><%=rs2.getString("email")%></p>
								</div>
							</div> 
						</a>

</div>					<%
}


%>


<%
}
}
catch(Exception e){
System.out.println("11="+e);
}
%>
				<div class="clearfix"> </div>
			</div> 
		</div>
	</div>
<%@ include file="footer.jsp"%>
