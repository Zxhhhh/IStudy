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
				<div class="song" style="padding: 0; width:100%">
					<div class="song-info">
						<h3>直播内容</h3>
						<span>主播：</span> <span style="float: right;margin-right: 30px;">观看人数：</span>
					</div>
					<div class="video-grid">
						<iframe
							src="http://player.youku.com/embed/XMjY4NDQ5NDE2' frameborder=0 'allowfullscreen'"
							allowfullscreen></iframe>
					</div>
				</div>
				<!-- 
					<div class="song-grid-right">
						<div class="share">
							<h5>主播介绍</h5>
							<p>介绍内容</p>
						</div>
					</div>
					 -->
				<div class="all-comments-buttons"
					style="float:right; margin-top: 10px;">
					<ul style="float:left">
						<li><a href="#" class="top">礼物1</a>
						</li>
						<li><a href="#" class="top">礼物2</a>
						</li>
					</ul>
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
								<h4>直播介绍</h4>
								<p>直播介绍</p></li>
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

				<div class="all-comments-buttons">
					<!--  
								<ul>
									<li><a href="#" class="top">礼物</a></li>
									<li><a href="#" class="top newest">礼物</a></li>
									<li><a href="#" class="top my-comment">礼物</a></li>
								</ul>
								-->
				</div>
			</div>
			<div class="col-md-4 single-right" style="background: #ffffff">
				<h3>评论区</h3>
				<div class="media-grids" style="position:relative; height:270px; overflow:auto;margin-top:1em;">
					<div class="media" style="margin:1em 0">
						<h5>观众1</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>
					<div class="media" style="margin:1em 0">
						<h5>观众2</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>
					<div class="media"  style="padding-left: 0px;margin:1em 0">
						<h5>观众3</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>
					<div class="media" style="margin:1em 0">
						<h5>观众4</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>
					<div class="media"  style="padding-left: 0px;margin:1em 0">
						<h5>观众5</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>
					<div class="media" style="margin:1em 0">
						<h5>观众6</h5>
						<div class="media-body">
							<p>主播真棒！学到了很多知识！</p>
						</div>
					</div>

				</div>
				<div class="box" >
					<form>
						<textarea placeholder="写下你的评论" required=" " style="width:90%"></textarea>
						<input type="submit" value="评论" style="float: right;margin-right: 30px;">
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
		</div>



		<div class="clearfix"></div>
		<div class="clearfix"></div>


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