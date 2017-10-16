<%@page import="com.why.vo.VO4VideoTypeShowRtn"%>
<%@page import="com.why.service.Study_articleService"%>
<%@page import="com.why.vo.VO4Article"%>
<%@page import="com.why.service.Study_video_typeService"%>
<%@page import="com.why.service.LevelService"%>
<%@page import="com.why.vo.VO4Video"%>
<%@page import="com.why.service.Study_videoService"%>
<%@page import="com.why.vo.VO4Level"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学之路</title>
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
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td
	{
	margin: 0;
	padding: 0;
}

.program-main {
	background-color: #ffffff;
	position: relative;
	padding-top: 1px;
	padding-bottom: 10px;
}

.clearfix {
	*zoom: 1:;
}

.clearfix {
	*zoom: 1:;
}

.program-wrap {
	width: 1200px;
	margin: 0 auto 0;
}

.course-nav-row {
	padding: 15px 0 5px;
	border-bottom: 1px solid #edf1f2;
}

.course-tool-bar {
	position: relative;
	margin-top: -1px;
	padding-right: 15px;
	height: 40px;
	background-color: #f9f9f9;
	border-top: 1px solid #d0d6d9;
	font-size: 12px;
}

.clearfix::after {
	content: "\0020";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
}

.clearfix::after {
	content: "\0020";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
}

#main {
	min-height: 750px;
	padding: 20px 0;
}

#main {
	padding-top: 0px !important;
}

body {
	background: #fff;
	color: #5e5e5e;
	font: 14px/2em Microsoft YaHei, SimSun, Arial;
}

html,body {
	font: 14px/1.5 "PingFang SC", Helvetica, "Helvetica Neue", "微软雅黑",
		Tahoma, Arial, sans-serif;
	color: #14191e;
}

body {
	overflow-y: scroll;
}

body {
	min-width: 1200px;
	background-color: #edeff0;
}

body {
	background: #edeff0;
}

body {
	background-color: #fff;
}

.l {
	float: left;
}

.l {
	float: left;
}

.r {
	float: right;
}

.r {
	float: right;
}

.course-tool-bar .tool-right {
	color: #787d82;
}

.course-tool-bar .tool-item {
	display: inline-block;
	line-height: 40px;
	margin: 0 8px;
	vertical-align: middle;
}

.course-tool-bar .total-num {
	display: none;
	color: #b4b9be;
}

a {
	outline: none;
}

a,input,button {
	outline: none;
}

:link,:visited,ins {
	text-decoration: none;
}

.hide-text {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}

a:link,a:visited {
	color: #5e5e5e;
}

a:link,a:visited {
	color: #14191e;
}

.course-tool-bar .pager-action {
	display: inline-block;
	vertical-align: middle;
	margin-left: 5px;
	width: 18px;
	height: 18px;
	border-color: #c8cdd2;
	border: 1px solid #c8cdd2;
	background-image: url("/static/img/course/v2/pager_sprite.png");
	background-repeat: no-repeat;
}

.course-tool-bar .pager-prev {
	background-position: 6px 4px;
}

.course-tool-bar .pager-action.disabled {
	border-color: #c8cdd2;
	opacity: 0.6;
	filter: alpha(opacity =           60);
	cursor: default;
}

.course-tool-bar .pager-next {
	background-position: 6px -14px;
}

.course-tool-bar .pager-cur {
	color: #f01400;
}

.course-tool-bar .tool-right b {
	font-weight: normal;
}

address,caption,cite,code,dfn,em,strong,th,var,optgroup {
	font-style: normal;
	font-weight: 400;
}

.course-tool-bar .tool-left a {
	margin: 0 20px;
	line-height: 40px;
	color: #787d82;
}

.course-tool-bar .tool-left a.active {
	color: #14191e;
}

.course-nav-row .hd {
	width: 56px;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	color: #787d82;
	text-align: right;
}

.course-nav-row .bd {
	margin-left: 70px;
}

ol,ul {
	list-style: none;
}

.course-nav-item {
	display: inline-block;
	*display: inline:;
	*zoom: 1:;
	margin: 0 13px;
}

.course-nav-item a {
	display: block;
	height: 20px;
	line-height: 20px;
	margin-bottom: 10px;
	padding: 0 6px;
	font-size: 12px;
}

.course-nav-item.on a {
	background: #f01400;
	color: #fff;
}

h2 {
	font-size: 20px;
}

.program-category h2 {
	line-height: 60px;
	height: 60px;
	color: #010101;
	font-size: 16px;
	font-weight: 700;
	border-bottom: 1px solid #d0d6d9;
	margin-left: 10px;
}

.course-list {
	padding-left: 0px;
	padding-right: 0px;
}

.salary-raise {
	padding-top: 18px;
}

ol,ul {
	list-style: none;
}

.course-list ul {
	margin: 0 -20px 0 -60px;
}

.course-list li {
	background: #fff;
	background: #f7faf9\0/;
	*background: #f7faf9:;
	border-bottom: 2px solid #f7faf9\0/;
	*border-bottom: 2px solid #f7faf9:;
	border-radius: 0 0 1px 1px;
	float: left;
	margin: 0 0 8px 40px;
	height: 250px;
	width: 240px;
	padding: 20px 20px 0;
	position: relative;
	-moz-transition: box-shadow 0.3s;
	-webkit-transition: box-shadow 0.3s;
	-o-transition: box-shadow 0.3s;
	transition: box-shadow 0.3s;
}

.program-medias li {
	height: 310px;
}

.salary-raise li {
	height: 310px;
}

a {
	outline: none;
}

a,input,button {
	outline: none;
}

:link,:visited,ins {
	text-decoration: none;
}

a:link,a:visited {
	color: #5e5e5e;
}

a:link,a:visited {
	color: #14191e;
}

.course-list li .course-list-img {
	width: 240px;
	height: 135px;
	overflow: hidden;
	position: relative;
	*display: inline:;
	*zoom: 1:;
}

.program-medias li .course-list-img {
	height: 180px;
}

h1,h2,h3,h4,h5,h6 {
	font-size: 100%;
	font-weight: 400;
	font-family: "Microsoft YaHei";
}

h5 {
	font-size: 14px;
	line-height: 28px;
}

.course-list li h5 {
	margin: 18px 0 0;
	height: 18px;
	line-height: 18px;
	color: #14191e;
	text-align: left;
	font-weight: bold;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.course-list .tags {
	margin: 12px 0 14px;
	height: 20px;
	overflow: hidden;
}

.course-list li .tips {
	font-size: 12px;
	color: #b4bbbf;
}

.course-list li .tips {
	margin: 0;
	padding: 0;
}

.l {
	float: left;
}

.ml20 {
	margin-left: 20px !important;
}

.l {
	float: left;
}

.ml20 {
	margin-left: 20px;
}

.course-list .tips span {
	color: #787d82;
}

.course-list .tags span {
	display: inline-block;
	margin-right: 4px;
	padding: 0 8px;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	color: #787d82;
	background-color: #edf1f2;
	vertical-align: middle;
}

fieldset,img {
	border: 0;
}

.course-list li .course-list-img img {
	display: block;
	width: 240px;
	transition: 1s;
	-moz-transition: 1s;
	-webkit-transition: 1s;
	-o-transition: 1s;
}

.program-medias li .course-list-img img {
	height: 180px;
}
</style>

</head>
<body id="List_courseId">

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp">
		<jsp:param value="movies" name="pages" />
	</jsp:include>
	<!-- 侧边栏 -->


	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
		style="background-color: #F3F5F7;">
		<div class="show-top-grids">
			<%
				String level = request.getParameter("level");
				String typeid = request.getParameter("type_id");
				if (typeid == null || typeid.equals("")) {
					out.println("非法操作");
				} else {

				}
				int type_id = Integer.parseInt(typeid);
				VO4VideoTypeShowRtn type = new Study_video_typeService()
						.findByPrimary(type_id);
			%>

			<div class="program-wrap clearfix"
				style="margin-left: 5px;margin-top: 15px;">
				<div class="program-main">
					<div class="program-category" id="raises">
						<h2><%=type.getType_name()%>
							工程师学习之路
						</h2>

					</div>
					<div>
						<div class="course-nav-row clearfix">
							<span class="hd l">方向：</span>
							<div class="bd">
								<ul>
									<%
										if (level == null) {
									%>
									<li id="all" class="course-nav-item on"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>" >全部</a>
									</li>
																		<%
										List<VO4Level> listvo = new LevelService().fingAllLevel();
										for (VO4Level vo4Level : listvo) {

									%>
									<li id="level" class="course-nav-item"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>&level=<%=vo4Level.getLevel_id()%>"><%=vo4Level.getLevel_name()%></a>
									</li>

									
									<%
										} }else {
									%>
									<li id="all" class="course-nav-item"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>">全部</a>
									</li>
									<%
										
									%>

									<%
										List<VO4Level> listvo = new LevelService().fingAllLevel();
										for (VO4Level vo4Level : listvo) {
										String selectlevel = String.valueOf(vo4Level.getLevel_id());
										if(level.equals(selectlevel)){
									%>
									<li id="level" class="course-nav-item on"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>&level=<%=vo4Level.getLevel_id()%>"><%=vo4Level.getLevel_name()%></a>
									</li>
									<%
										}else{
									%>
									<li id="level" class="course-nav-item"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>&level=<%=vo4Level.getLevel_id()%>"><%=vo4Level.getLevel_name()%></a>
									</li>
									<%
									 
									}
									
									}
									}
									%>
								</ul>
							</div>
							<span class="hd l">分类：</span>
							<div class="bd">
								<ul>
									<li class="course-nav-item"><a
										href="study_viewtype_videoBytime.jsp?type_id=<%=type_id%>">视频</a>
									</li>
									<li class="course-nav-item on"><a
										href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>">文章</a>
									</li>

								</ul>
							</div>
						</div>
						<div class="course-tool-bar clearfix">
							<div class="tool-left l">
								<a class="sort-item active"
									href="study_viewtype_articleBytime.jsp?type_id=<%=type_id%>">最新</a>
																										<a class="sort-item"
									href="study_viewtype_articleBycount.jsp?type_id=<%=type_id%>">最热</a>

 
							</div>
							<div class="tool-right r">

								<span class="tool-item total-num"> 共<b>36</b>个路径 </span> <span
									class="tool-item tool-pager"> <span class="pager-num">
										<b class="pager-cur">1</b>/<em class="pager-total">2</em> </span> <a
									class="pager-action pager-prev hide-text disabled"
									href="javascript:void(0)">上一页</a> <a
									class="pager-action pager-next hide-text"
									href="/course/program?page=2#raises">下一页</a> </span>
							</div>
						</div>
						<div class="course-list salary-raise program-medias">
							<ul class="clearfix">

								<%
									List<VO4Article> list = null;
									if (level == null) {
										list = new Study_articleService().findAllArticleByTime(type_id);
									} else {
										int article_level = Integer.parseInt(level);
										list = new Study_articleService().findArticleByLevelTime(
												article_level, type_id);
									}
									for (VO4Article vo4Article : list) {
								%>

								<li class="course-one"><a title="<%=vo4Article.getArticle_summary()%>"
									href="article_single.jsp?article_id=<%=vo4Article.getArticle_id()%>" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="<%=vo4Article.getArticle_summary()%>"
												src="<%=vo4Article.getArticle_pic()%>">
										</div>
										<h5>
											<span><%=vo4Article.getArticle_name()%></span>
										</h5>
										<div class="tags">
											<span><%=vo4Article.getArticle_summary()%></span>
										</div>
										<div class="tips">
											<span class="l"><%=vo4Article.getArticle_time()%></span> <span
												class="l ml20"><%=vo4Article.getArticle_count()%>在学习</span>
										</div> </a>
								</li>

								<%
									}
								%>
							</ul>
							<div style="height: 100px"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- 			<div class="main-grids news-main-grids">
			
				<div class="recommended-info">
				
				
				
				
				
				
				</div>
			</div> -->
		</div>

		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->

	</div>


	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a></li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a></li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>