<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<title>News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<!--<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> -->
<!-- //fonts -->
</head>
  <body>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->
	
	
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation">
				  <ul class="nav nav-sidebar">
					<li><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
					<li><a href="video.jsp" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>TV Shows</a></li>
					<li><a href="live.jsp" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>History</a></li>
					<li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>Movies<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li><a href="study.jsp">English</a></li>                                             
							<li><a href="study.jsp">Chinese</a></li>
							<li><a href="study.jsp">Hindi</a></li> 
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>Sports<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="sports.jsp">Football</a></li>                                             
							<li><a href="sports.jsp">Cricket</a></li>
							<li><a href="sports.jsp">Tennis</a></li> 
							<li><a href="sports.jsp">Shattil</a></li>  
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="study.jsp" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>Songs</a></li>
					<li class="active"><a href="news.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>News</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
						<div class="copyright">
							<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></p>
						</div>
					</div>
				</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
				<div class="recommended">
					<div class="recommended-grids english-grid">
						<div class="recommended-info">
							<div class="heading">
								<h3>Top News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n7.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n8.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n9.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n10.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n11.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n12.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<div class="heading">
								<h3>Update News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n3.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n4.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n5.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n6.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<div class="heading">
								<h3>Popular Sports News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp4.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp6.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g3.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			
	<!-- 底部栏 -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- 底部栏 -->	

		</div>
		<div class="clearfix"> </div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
		  <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
		</ul>
	</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  </body>
</html>