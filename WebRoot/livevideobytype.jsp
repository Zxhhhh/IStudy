<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Live</title>
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
		
		<!-- 侧边栏 -->
		<jsp:include page="sidebar.jsp">
		<jsp:param value="livevideo" name="pages"/>
		</jsp:include>
		<!-- 侧边栏 -->
		
 		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="show-top-grids">
				<div class="col-sm-10 show-grid-left main-grids">
					<div class="recommended">
						<div class="recommended-grids english-grid">
							<div class="recommended-info">
								<div class="heading">
									<h3>直播类型</h3>
								</div>
							
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>7:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>9:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:06</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>4:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/mt6.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:14</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,476 views</p>
								</div>
							</div>

							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/ma1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:09</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,897 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/ma2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>6:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,565 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/ma3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,576 views</p>
								</div>
							</div>
							
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/ma5.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,443 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="live2.jsp"><img src="images/ma6.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="live2.jsp" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,545 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				
				<!-- 右侧栏 -->
				<jsp:include page="liverightbar.jsp">
				<jsp:param value="shows" name="right_pages"/>
				</jsp:include>
				<div class="clearfix"> </div>
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