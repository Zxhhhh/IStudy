<%@page import="java.util.ArrayList"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Shows</title>
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
<style type="text/css">
.left {
	float: left;
	width: 210px;
	height: 120px;
	margin-right: 24px;
}

.right {
	width: 558px;
	min-height: 120px;
}

.title {
	color: #07111b;
	height: 32px;
	line-height: 32px;
}

.title .type {
	font-size: 14px;
	margin-right: 6px;
	line-height: 32px;
}

.img {
	max-width: 210px;
	max-height: 120px;
}

.tag {
	height: 16px;
	line-height: 16px;
	padding: 16px 0;
}

.tag strong {
	float: left;
	font-size: 12px;
	color: #93999f;
}

.search-related {
	height: 40px;
	line-height: 40px;
	font-size: 12px;
	color: #93999f;
	padding-left: 24px;
	background-color: #f3f5f7;
}

.search-title {
	padding: 10px 0 28px 24px;
	height: 15px;
	line-height: 24px;
	font-size: 16px;
	color: #07111b;
	font-weight: 700;
	margin-top: 10px;
}

.content {
	line-height: 24px;
	font-size: 14px;
	color: #4d555d;
}
</style>
</head>
<body>
	<%
		String type = request.getParameter("type");
	%>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp">
		<jsp:param value="shows" name="pages" />
	</jsp:include>
	<!-- 侧边栏 -->


	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="carousel slide" id="carousel-176744"></div>
				</div>
			</div>


			<div class="show-top-grids">


				<div class="col-sm-10 show-grid-left main-grids">

					<div class="recommended">


						<div class="recommended-grids english-grid">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1" data-toggle="tab">全站</a>
								</li>
								<li><a href="#tab2" data-toggle="tab">视频</a></li>
								<li><a href="#tab3" data-toggle="tab">直播</a></li>
								<li><a href="#tab4" data-toggle="tab">文章</a></li>
							</ul>

							<div class="tab-content" style="margin-top: 10px;">
								<div class="tab-pane active" id="tab1">

									<div class="search-related">
										共找到
										<%
										List<VO4LiveShowRtn> livelist2 = new ArrayList<VO4LiveShowRtn>();
										List<VO4Article> articlelist = new ArrayList<VO4Article>();
										List<VO4VideoShowRtn> videos = new ArrayList<VO4VideoShowRtn>();
										if (session.getAttribute("livelistRtn") != null) {

											livelist2 = (ArrayList<VO4LiveShowRtn>) session
													.getAttribute("livelistRtn");
										}
										if (session.getAttribute("articlelistRtn") != null) {
											articlelist = (ArrayList<VO4Article>) session
													.getAttribute("articlelistRtn");
										}
										if (session.getAttribute("videolistRtn") != null) {
											videos = (ArrayList<VO4VideoShowRtn>) session
													.getAttribute("videolistRtn");
										}
										out.print(livelist2.size() + articlelist.size()+videos.size());
									%>个相关内容
									</div>
									<%if (livelist2.size()!= 0) { %>
									<h2 class="search-title"
										style="border-bottom: 1px solid #d9dde1;font-family: Microsoft YaHei;">直播</h2>
									<%} %>
									<%
										if (session.getAttribute("livelistRtn") != null) {

											List<VO4LiveShowRtn> livelist = new ArrayList<VO4LiveShowRtn>();
											livelist = (ArrayList<VO4LiveShowRtn>) session
													.getAttribute("livelistRtn");
											for (int i = 0; i < livelist.size(); i++) {
									%>

									<div
										style="width: 100%;padding: 15px;    border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="live_single.jsp?id=<%=livelist.get(i).getLive_id()%>"><img
												alt="" src=<%=livelist.get(i).getLive_pic()%> width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div
											 class="title">
												<span class="type">[直播]</span> <a
													href="live_single.jsp?id=<%=livelist.get(i).getLive_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=livelist.get(i).getLive_name()%></a>
											</div>
											<div class="tag">
												<strong>主播：<%=livelist.get(i).getLive_author()%></strong>
											</div>
											<p class="content">
												<span>简介：</span><%=livelist.get(i).getLive_content()%></p>
										</div>
									</div>

									<%
										}
										}
									%>
									<!-- 文章显示区域 -->
									<%if (articlelist.size()!= 0) { %>
									<h2 class="search-title"
										style="border-bottom: 1px solid #d9dde1;font-family: Microsoft YaHei;">文章</h2>
									<%} %>
									<%
										if (session.getAttribute("articlelistRtn") != null) {

											ArrayList<VO4Article> artlist = new ArrayList<VO4Article>();
											artlist = (ArrayList<VO4Article>) session
													.getAttribute("articlelistRtn");
											for (int i = 0; i < artlist.size(); i++) {
									%>
								<div style="width: 100%;padding: 15px;border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="article_single.jsp?article_id=<%=artlist.get(i).getArticle_id()%>"><img
												alt="" src="<%=artlist.get(i).getArticle_pic()%>" width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div class="title">
												<span class="type">[文章]</span> <a
													href="article_single.jsp?article_id=<%=artlist.get(i).getArticle_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=artlist.get(i).getArticle_name()%></a>
											</div>
										
											<p class="content" style="margin-top: 25px;">
												<span>作者：</span><%=artlist.get(i).getArticle_author()%></p>
										</div>
									</div>
								
								<%}
								} %>
									
									<!-- 视频显示区域 -->
									<%if (videos.size()!= 0) { %>
									<h2 class="search-title"
										style="border-bottom: 1px solid #d9dde1;font-family: Microsoft YaHei;">视频</h2>
									<%} %>
									<%
										if (session.getAttribute("videolistRtn") != null) {

										
											for (int i = 0; i < videos.size(); i++) {
									%>
								<div style="width: 100%;padding: 15px;border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="video_single.jsp?id=<%=videos.get(i).getVideo_id()%>"><img
												alt="" src="<%=videos.get(i).getVideo_pic()%>" width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div class="title">
												<span class="type">[视频]</span> <a
													href="video_single.jsp?id=<%=videos.get(i).getVideo_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=videos.get(i).getVideo_name()%></a>
											</div>
										<div class="tag">
												<strong><%=videos.get(i).getVideo_count()%>人学过</strong>
											</div>
											<p class="content" style="margin-top: 5px;">
												<span>简介：</span><%=videos.get(i).getVideo_summary()%></p>
										</div>
									</div>
								
								<%}
								} %>
									
									
								</div>
								<div class="tab-pane" id="tab2">
									<div class="search-related">
										共找到
										<%
										if (session.getAttribute("videolistRtn") != null) {
											
											out.print(videos.size());
										}
									%>个相关内容
									</div>
									
									<%
										if (session.getAttribute("videolistRtn") != null) {

											ArrayList<VO4VideoShowRtn> videolist = new ArrayList<VO4VideoShowRtn>();
											videolist = (ArrayList<VO4VideoShowRtn>) session
													.getAttribute("videolistRtn");
											for (int i = 0; i < videolist.size(); i++) {
									%>
								<div style="width: 100%;padding: 15px;border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="video_single.jsp?id=<%=videolist.get(i).getVideo_id()%>"><img
												alt="" src=<%=videolist.get(i).getVideo_pic()%> width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div class="title">
												<span class="type">[视频]</span> <a
													href="article_single.jsp?id=<%=videolist.get(i).getVideo_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=videolist.get(i).getVideo_name()%></a>
											</div>
											<div class="tag">
												<strong><%=videolist.get(i).getVideo_count()%>人学过</strong>
											</div>
											<p class="content" style="margin-top: 5px;">
												<span>简介：</span><%=videolist.get(i).getVideo_summary()%></p>
										</div>
									</div>
								
								<%}
								} %>
								</div>
								
								<div class="tab-pane" id="tab3">

									<div class="search-related">
										共找到
										<%
										if (session.getAttribute("livelistRtn") != null) {
											ArrayList<VO4LiveShowRtn> livelist = new ArrayList<VO4LiveShowRtn>();
											livelist = (ArrayList<VO4LiveShowRtn>) session
													.getAttribute("livelistRtn");
											out.print(livelist.size());
										}
									%>个相关内容
									</div>
									<%
										if (session.getAttribute("livelistRtn") != null) {

											ArrayList<VO4LiveShowRtn> livelist = new ArrayList<VO4LiveShowRtn>();
											livelist = (ArrayList<VO4LiveShowRtn>) session
													.getAttribute("livelistRtn");
											for (int i = 0; i < livelist.size(); i++) {
									%>

									<div
										style="width: 100%;padding: 15px;border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="live_single.jsp?id=<%=livelist.get(i).getLive_id()%>"><img
												alt="" src=<%=livelist.get(i).getLive_pic()%> width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div class="title">
												<span class="type">[直播]</span> <a
													href="live_single.jsp?id=<%=livelist.get(i).getLive_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=livelist.get(i).getLive_name()%></a>
											</div>
											<div class="tag">
												<strong>主播：<%=livelist.get(i).getLive_author()%></strong>
											</div>
											<p class="content">
												<span>简介：</span><%=livelist.get(i).getLive_content()%></p>
										</div>
									</div>

									<%
										}
										}
									%>
								</div>
								<div class="tab-pane" id="tab4">
										<div class="search-related">
										共找到
										<%
										if (session.getAttribute("articlelistRtn") != null) {
											ArrayList<VO4Article> livelist = new ArrayList<VO4Article>();
											livelist = (ArrayList<VO4Article>) session
													.getAttribute("articlelistRtn");
											out.print(livelist.size());
										}
									%>个相关内容
									</div>
									
									<%
										if (session.getAttribute("articlelistRtn") != null) {

											ArrayList<VO4Article> artlist = new ArrayList<VO4Article>();
											artlist = (ArrayList<VO4Article>) session
													.getAttribute("articlelistRtn");
											for (int i = 0; i < artlist.size(); i++) {
									%>
								<div style="width: 100%;padding: 15px;border-bottom: 1px solid #d9dde1;">
										<div class="left" style="display: block;overflow: hidden;">
											<a
												href="article_single.jsp?article_id=<%=artlist.get(i).getArticle_id()%>"><img
												alt="" src=<%=artlist.get(i).getArticle_pic()%> width="210px"
												height="120px">
											</a>
										</div>
										<div class="right" style="overflow: hidden;">
											<div class="title">
												<span class="type">[文章]</span> <a
													href="article_single.jsp?id=<%=artlist.get(i).getArticle_id()%>"
													style="font-size: 16px;color: #07111b;font-weight: 700;"><%=artlist.get(i).getArticle_name()%></a>
											</div>
										
											<p class="content" style="margin-top: 25px;">
												<span>作者：</span><%=artlist.get(i).getArticle_author()%></p>
										</div>
									</div>
								
								<%}
								} %>
								</div>
							</div>
							<div style="width: 100%;height: 500px"></div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<!-- 右侧栏 -->

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