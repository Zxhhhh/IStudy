<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>single</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
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
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- 侧边栏 -->

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
						<h3>Java 基础的入门学习</h3>
					</div>
					<div class="video-grid">
						<!-- <iframe src="https://www.youtube.com/embed/oYiT-vLjhC4" allowfullscreen></iframe> -->
						<iframe height=498 width=510
							src='http://player.youku.com/embed/XMTY3NDA0Mzk4OA=='
							frameborder=0'allowfullscreen'></iframe>
					</div>
				</div>
				<div class="song-grid-right">
					<div class="share">
						<h5>分享</h5>
						<ul>
							<li><a href="#" class="icon fb-icon">Facebook</a>
							</li>
							<li><a href="#" class="icon dribbble-icon">Dribbble</a>
							</li>
							<li><a href="#" class="icon twitter-icon">Twitter</a>
							</li>
							<li><a href="#" class="icon pinterest-icon">Pinterest</a>
							</li>
							<li><a href="#" class="icon whatsapp-icon">Whatsapp</a>
							</li>
							<li><a href="#" class="icon like">Like</a>
							</li>
							<li><a href="#" class="icon comment-icon">Comments</a>
							</li>
							<li class="view">200 Views</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="published">
					<script src="jquery.min.js"></script>
					<script>
						$(document).ready(function() {
							size_li = $("#myList li").size();
							x = 1;
							$('#myList li:lt(' + x + ')').show();
							$('#loadMore').click(function() {
								x = (x + 1 <= size_li) ? x + 1 : size_li;
								$('#myList li:lt(' + x + ')').show();
							});
							$('#showLess').click(function() {
								x = (x - 1 < 0) ? 1 : x - 1;
								$('#myList li').not(':lt(' + x + ')').hide();
							});
						});
					</script>
					<div class="load_more">
						<ul id="myList">
							<li>
								<h4>Java 基础的入门学习 2016发布</h4>
								<p>教你学会整合免费的第三方资源，快速开发轻量型App
									，同时整个课程涉及知识面广，总体上难度不大，加上课程有源码支持，降低了学习难度</p></li>
							<li>
								<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel
									ultricies erat, vel sodales leo. Maecenas pellentesque, est
									suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
									dignissim diam velit id tellus. Morbi luctus velit quis semper
									egestas. Nam condimentum sem eget ex iaculis bibendum. Nam
									tortor felis, commodo faucibus sollicitudin ac, luctus a
									turpis. Donec congue pretium nisl, sed fringilla tellus tempus
									in.</p>
								<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel
									ultricies erat, vel sodales leo. Maecenas pellentesque, est
									suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
									dignissim diam velit id tellus. Morbi luctus velit quis semper
									egestas. Nam condimentum sem eget ex iaculis bibendum. Nam
									tortor felis, commodo faucibus sollicitudin ac, luctus a
									turpis. Donec congue pretium nisl, sed fringilla tellus tempus
									in.</p>
								<div class="load-grids">
									<div class="load-grid">
										<p>Category</p>
									</div>
									<div class="load-grid">
										<a href="study.jsp">Entertainment</a>
									</div>
									<div class="clearfix"></div>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="all-comments">
					<div class="all-comments-info">
						<a href="#">所有评论(8,657)</a>
						<div class="box">
							<form>
								<input type="text" placeholder="Name" required=" "> <input
									type="text" placeholder="Email" required=" "> <input
									type="text" placeholder="Phone" required=" ">
								<textarea placeholder="Message" required=" "></textarea>
								<input type="submit" value="评论">
								<div class="clearfix"></div>
							</form>
						</div>
						<div class="all-comments-buttons">
							<ul>
								<li><a href="#" class="top">最热评论</a>
								</li>
								<li><a href="#" class="top newest">最新评论</a>
								</li>
								<li><a href="#" class="top my-comment">我的评论</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="media-grids">
						<div class="media">
							<h5>小明</h5>
							<div class="media-left">
								<a href="#"> </a>
							</div>
							<div class="media-body">
								<p>感谢老师，这个视频对我非常有帮助！</p>
								<span>View all posts by :<a href="#"> Admin </a>
								</span>
							</div>
						</div>






					</div>
				</div>
			</div>
			<div class="col-md-4 single-right">
				<h3>Up Next</h3>
				<div class="single-grid-right">
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r1.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r2.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r3.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r4.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r5.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r6.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								By <a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r1.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r2.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r3.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r4.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r5.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="images/r6.jpg" alt="" />
							</a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> Nullam interdum metus</a>
							<p class="author">
								<a href="#" class="author">John Maniya</a>
							</p>
							<p class="views">2,114,200 views</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->

	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a>
			</li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a>
			</li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a>
			</li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>