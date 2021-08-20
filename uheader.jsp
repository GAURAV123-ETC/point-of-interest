<!DOCTYPE html>
<html lang="en">
<head>
<title>::User::<%=session.getAttribute("name")%></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Pets Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">   
<link href="css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons --> 
<link href="css/lsb.css" rel="stylesheet" type="text/css">  
<!-- //Custom Theme files -->  
<!-- web-fonts -->   


<!-- //web-fonts -->
</head>
<body> 
	<!-- banner -->
	<div class="w3ls-banner about-w3lsbanner">
		<div class="w3lsbanner-info">
			<!-- header -->
			<div class="header">
				<div class="container">   
					<div class="agile_header_grid"> 
						<div class="header-mdl agileits-logo"> 
							<h1><a href="#">Point-of-interest Recommendation for Location Promotion in Location-based Social Networks</a></h1> 
						</div>
						<div class="clearfix"> </div>
					</div> 
					<div class="header-nav"><!-- header-two --> 	
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button> 
							</div>
							<!-- top-nav -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav cl-effect-16">
									<li><a href="u_home.jsp" data-hover="Home">Home</a></li>
<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Friends <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="fsearch.jsp" data-hover="Friend Search">Friend Search</a></li>
											<li><a href="viewf.jsp" data-hover="View Friends">View Friends</a></li>
											<li><a href="freq.jsp" data-hover="Friend Requests">Friend Requests</a></li>
																	
										</ul>
									</li> 
<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Wall<span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="viewwall.jsp" data-hover="View Wall">View Wall</a></li>
											<li><a href="ownwall.jsp" data-hover="Own Wall">Own Wall</a></li>
																	
										</ul>
									</li> 
									<li><a href="#" data-hover="Check In">Check In</a></li>
									<li><a href="#" data-hover="POI Recommendation">POI Recommendation</a></li>
									<li><a href="index.jsp" data-hover="Logout">Logout</a></li>
								</ul>  
								<div class="clearfix"> </div>	
							</div>
						</nav>    
					</div>	
				</div>	
			</div>	
			<!-- //header -->  
		</div>	
	</div>	
	<!-- //banner --> 
	<!-- gallery -->
	<div class="gallery team">
		<div class="container"> 

<%String email=(String)session.getAttribute("email");%>
