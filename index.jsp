<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%
    String message=request.getParameter("m");
    if(message!=null && message.equalsIgnoreCase("fail")){
    out.println("<script type=text/javascript>alert('Sorry, Login Fail')</script>");
	}
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LBSNs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Pets Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">   
<link href="css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<!-- //Custom Theme files -->  
<!-- web-fonts -->   
<!-- //web-fonts -->
</head>
<body> 
	<!-- banner -->
	<div class="w3ls-banner jarallax">
		<div class="w3lsbanner-info">
			<!-- header -->
			<div class="header">
				<div class="container">   
					<div class="agile_header_grid"> 
						<div class="header-mdl agileits-logo"><!-- header-two --> 
							<h1><a href="#">LBSNs</a></h1> 
						</div>
						<div class="agileits_w3layouts_sign_in">
							<ul>
								<li><a href="#myModal2" data-toggle="modal" class="play-icon">Login</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div> 
					<div class="header-nav"><!-- header-three --> 	
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
									<li><a href="index.jsp" data-hover="Home">Home</a></li>
									<li><a href="adduser.jsp" data-hover="User Sign Up">User Sign Up</a></li>
									<li><a href="addpoi0.jsp" data-hover="POI Page Create">POI Page Create</a></li>
									
								</ul>  
								<div class="clearfix"> </div>	
							</div>
						</nav>    
					</div>	
				</div>	
			</div>	
			<!-- //header --> 
			<!-- banner-text -->
			<div class="banner-text agileinfo"> 
				<div class="container">
					<div class="agile_banner_info">
						<div class="agile_banner_info1">
							<div id="typed-strings" class="agileits_w3layouts_strings">
								<p>>> Point-of-interest</p> 
								<p><i> Recommendation</i></p>
								<p><i>for Location</i> Promotion </p>
								<p>in Location-based  <p><i>Social Networks</i></p>
							</div>
							<span id="typed" style="white-space:pre;"></span>
						</div>
					</div> 
					<div class="agile_social_icons_banner">
						<ul class="agileits_social_list">
							
						</ul>
					</div> 
				</div>
			</div>
			<!-- //banner-text -->  
		</div>	
	</div>	
	<!-- //banner -->
	<!-- banner-bottom -->
	<!-- //banner-bottom -->
	<!-- welcome -->	
	
	<!-- //welcome -->	
	<!-- services --> 
	
	<!-- //services -->
	<!-- blog-bottom -->
	<div class="blog-bottom">
		<div class="container">
			<div class="col-sm-5 w3_agile_blog_bottom_left">
				<img src="images/s1.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="col-sm-7 w3_agile_blog_bottom_right">
				<h5>POI</h5>
				<h3>Point-of-Interest</h3>
				<p>With the wide application of location-based social networks (LBSNs), point-of-interest (POI) recommendation has become one of the major services in LBSNs.</p>
				<div class="w3l_more">
					<a href="#" class="button button--nina" data-text="Learn more" data-toggle="modal" data-target="#myModal">
						<span>L</span><span>e</span><span>a</span><span>n</span> <span>m</span><span>o</span><span>r</span><span>e</span>
					</a>
				</div> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //blog-bottom -->
	<!-- news letter -->
	<div class="subscribe jarallax">
		<div class="sub-agileinfo">
			<div class="container">
				<h3 class="agileits-title w3title1">Major Contributions</h3>
				<p>We propose a novel point-of-interest recommendation problem, and its goal is to promote the businesses’ locations ( POIs ).</p>
<p>We define the user’s IS under special POI categories in an entire social network, and model user mobility to describe the geographical influence between users. </p>
			</div> 
		</div>
	</div>
	<!-- //news letter -->
	<!-- footer -->
		<div class="footer-bottom">
			
		</div>
	</div>
	<!-- //footer -->
	<!-- modal-about -->
		<div class="modal bnr-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body modal-spa">
					<img src="images/g2.jpg" class="img-responsive" alt=""/>
					<h4>Abstract</h4>
					<p>With the wide application of location-based social networks (LBSNs), point-of-interest (POI) recommendation has become one of the major services in LBSNs. The behaviors of users in LBSNs are mainly checking in POIs, and these checkingin behaviors are influenced by user’s behavior habits and his/her friends. In social networks, social influence is often used to help businesses to attract more users. Each target user has a different influence on different POI in social networks. This paper selects the list of POIs with the greatest influence for recommending users. Our goals are to satisfy the target user’s service need, and simultaneously to promote businesses’ locations (POIs). This paper defines a POI recommendation problem for location promotion. Additionally, we use submodular properties to solve the optimization problem. At last, this paper conducted a comprehensive performance evaluation for our method using two real LBSN datasets. Experimental results show that our proposed method achieves significantly superior POI recommendations comparing with other state-of-the-art recommendation approaches in terms of location promotion. </p>
				</div> 
			</div>
		</div>
	</div>

	<!-- modal sign in  -->
	<div class="modal bnr-modal about-modal w3-agileits fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body login-page "><!-- login-page -->      
					<div class="sap_tabs">
						<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
							<ul class="resp-tabs-list">
								<li class="resp-tab-item" aria-controls="tab_item-0"><span>User</span></li>
								<li class="resp-tab-item" aria-controls="tab_item-1"><span>Admin</span></li> 
								<li class="resp-tab-item" aria-controls="tab_item-2"><span>POI</span></li> 
							</ul>	 
							<div class="clearfix"> </div>	
							<div class="resp-tabs-container">
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="agileits-login">
										<h3>User Login</h3>

										<form action="ulogin.jsp" method="post">
											<input type="email" class="email" name="uid" placeholder="Email" required=""/>
											<input type="password" class="password" name="pwd" placeholder="Password" required=""/>
											<div class="wthree-text"> 
												<div class="clearfix"> </div>
											</div>  
											<div class="w3ls-submit"> 
												<input type="submit" value="LOGIN">  	
											</div>	
										</form>
									</div> 
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="login-top sign-top">
										<div class="agileits-login">
										<h3>Admin Login</h3>
											<form action="alogin.jsp" method="post">
												<input type="text" class="email" name="uid" placeholder="UserId" required=""/>
												<input type="password" class="password" name="pwd" placeholder="Password" required=""/>	
												<div class="w3ls-submit"> 
													<input class="register" type="submit" value="Login">  
												</div>
											</form> 
										</div>  
									</div>
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="login-top sign-top">
										<div class="agileits-login">
											<h3>POI / Manager Login</h3>

											<form action="#" method="post">
												<input type="text" class="email" name="uid" placeholder="Email" required=""/>
												<input type="password" class="password" name="pwd" placeholder="Password" required=""/>	
												<div class="w3ls-submit"> 
													<input class="register" type="submit" value="Login">  
												</div>
											</form> 
										</div>  
									</div>
								</div>
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>   
				</div> <!-- //login-page -->
			</div>
		</div>
	</div>
	<!-- //modal sign in -->  
	<!-- js --> 
	<script src="js/jquery-2.2.3.min.js"></script>  
	<!-- //js -->  
	<!-- jarallax -->  
	<script src="js/SmoothScroll.min.js"></script> 
	<script src="js/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>  
	<!-- //jarallax -->
	<!-- ResponsiveTabs js -->
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	</script>
	<!-- //ResponsiveTabs js -->  
	<!-- banner-type-text -->
	<script src="js/typed.js" type="text/javascript"></script>
    <script>
		$(function(){

			$("#typed").typed({
				// strings: ["Typed.js is a <strong>jQuery</strong> plugin.", "It <em>types</em> out sentences.", "And then deletes them.", "Try it out!"],
				stringsElement: $('#typed-strings'),
				typeSpeed: 30,
				backDelay:700,
				loop: true,
				contentType: 'html', // or text
				// defaults to false for infinite loop
				loopCount: false,
				callback: function(){ foo(); },
				resetCallback: function() { newTyped(); }
			});

			$(".reset").click(function(){
				$("#typed").typed('reset');
			});

		}); 
		function newTyped(){ /* A new typed object */ }

		function foo(){ console.log("Callback"); }
    </script>
	<!-- //banner-type-text -->
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
	<!-- //flexSlider --> 
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>