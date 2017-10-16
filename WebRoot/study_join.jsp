<%@page import="com.why.service.StudyService"%>
<%@page import="com.why.service.LevelService"%>
<%@page import="com.why.vo.VO4Level"%>
<%@page import="com.why.vo.VO4VideoTypeShowRtn"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.why.service.Study_articleService"%>
<%@page import="com.why.vo.VO4Article"%>
<%@page import="com.why.service.Study_videoService"%>
<%@page import="com.why.vo.VO4Video"%>
<%@page import="com.why.service.Study_video_typeService"%>
<%@page import="com.why.dao.DAO4Study_video"%>
<%@page import="com.why.dto.DTO4Video"%>
<%@page import="com.why.dto.DTO4Video_type"%>
<%@page import="java.util.List"%>
<%@page import="com.why.dao.DAO4Study_video_type"%>
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
.content {
	width: 100%;
	height: auto;
}

.left {
	float: left;
	width: 25%;
}

.right {
	float: left;
	padding-left: 60px;
	width: 74%;
}

.type_pic {
	margin-top: 30px;
}

.type_summary {
	margin-left: 10px;
}

.video_single {
	float: left;
	margin-right: 20px;
}

.row {
	margin-top: 30px;
	margin-bottom: 40px
}

.article_single {
	float: left;
	margin-right: 20px;
}
</style>



</head>
<body>

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
				String user_id =(String) session.getAttribute("user_id");
						String level = request.getParameter("level");
						String typeid = request.getParameter("type_id");
						if (typeid == null || typeid.equals("")) {
							out.println("非法操作");
						} else {

						}
						int userid = Integer.parseInt(user_id);
						int type_id = Integer.parseInt(typeid);
						VO4VideoTypeShowRtn type = new Study_video_typeService()
								.findByPrimary(type_id);
			%>
			<h4 style="margin-left: 10px;">
				爱学之路 \
				<%=type.getType_name()%>工程师 <a href="study.jsp">返回</font> </a>
			</h4>

			<div class="content">
				<div class="left">
					<div align="center" style="margin-top: 100px;">
						<img alt="" src="images/56551e2800014fa909600720-240-180.jpg"
							class="type_pic"> <br>

						<%
							int result = new StudyService().findStudyState(userid);
												if(result==0){
						%>
						<a style="margin-top: 20px;" class="btn btn-primary btn-lg" role="button" href="servlet/StudyServlet?op=join&type_id=<%=type_id%>">参加该课程</a>
						<%
							}else{
						%>
							<a style="margin-top: 20px;" class="btn btn-danger btn-lg" role="button" href="servlet/StudyServlet?op=quit&type_id=<%=type_id%>">退出该课程</a>
						<%
							}
						%>


					</div>

					<h4 style="margin-top:30px;margin-left:  10px;">路径介绍</h4>
					<hr />
					<div class="type_summary">
						<font size="3px" color="#919599"><%=type.getType_summary()%>
						</font>

					</div>

				</div>

				<div class="right">
					<h2><%=type.getType_name()%>工程师
					</h2>
					<%
						int article_count = new Study_articleService()
														.findArticleCountByTypeId(type_id);
												int video_count = new Study_videoService()
														.findVideoCountByTypeId(type_id);
												int total_count = article_count + video_count;
												//int userid  = Integer.parseInt(user_id);
												int study_count = new StudyService().countStudy(userid);
												float study_percent = (float)study_count*100/(float)total_count;
												int percent = (int)study_percent;
					%>
					<font size="2.5px" style="margin-left: 30px;" color="#919599">共<%=total_count%>门
						课程 </font> <br> <br> <font size="3px" style="margin-top: 50px;">学习进度:
					</font>
					<!-- 进度条 -->
					<div class="progress progress-striped">
						<div class="progress-bar" role="progressbar"
							aria-valuenow="<%=percent%>" aria-valuemin="0"
							aria-valuemax="100" style="width: <%=percent%>%;">
							<%=percent%>%
						</div>
					</div>
					<!-- 进度条 -->
					<br> <br>
					<%
						List<VO4Level> listvo = new LevelService().fingAllLevel();
												for (VO4Level vo4Level : listvo) {
					%>
					<!-- 教程级别循环开始 -->
					<div id="type<%=vo4Level.getLevel_id()%>">



						<font size="4px;" style="margin-right: 20px;"><strong><%=vo4Level.getLevel_name()%>教程</strong>
						</font>
						<button type="button" class="btn btn-primary btn-sm"
							onmouseover="fun('type<%=vo4Level.getLevel_id()%>','tab<%=vo4Level.getLevel_id()%>')">视频</button>
						<button type="button" class="btn btn-default btn-sm"
							onmouseover="fun('type<%=vo4Level.getLevel_id()%>','tab<%=vo4Level.getLevel_id()%>')">文章</button>
					</div>

					<div id="tab<%=vo4Level.getLevel_id()%>">
						<div class="row">
							<%
								List<VO4Video> list = null;
																			list = new Study_videoService().findVideoByLevelTime(vo4Level.getLevel_id(), type_id);
																			for (VO4Video vo4Video : list) {
							%>

							<div class="video_single">
								<a href="video_single.jsp?video_id=<%=vo4Video.getVideo_id()%>">
									<img alt="" src=<%=vo4Video.getVideo_pic()%>
									style="width: 250px;height: 200px;">

									<h4><%=vo4Video.getVideo_name()%></h4>
								</a>
							</div>

							<%
								}
							%>
						</div>


						<div class="row" style="display: none;">
							<%
								List<VO4Article> list2 = new Study_articleService()
																					.findArticleByLevelTime(vo4Level.getLevel_id(), type_id);
																			for (VO4Article vo4Article : list2) {
							%>

							<div class="article_single">
								<a
									href="article_single.jsp?article_id=<%=vo4Article.getArticle_id()%>">
									<img alt="" src=<%=vo4Article.getArticle_pic()%>
									style="width: 250px;height: 200px;">

									<h4><%=vo4Article.getArticle_name()%></h4>
								</a>
							</div>

							<%
								}
							%>
						</div>

					</div>

					<!-- 教程级别循环结束 -->




					<%
						}
					%>











				</div>

			</div>


		</div>
		<div style="width: 100%;height: auto;float: left;">
			<!-- 底部栏 -->
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- 底部栏 -->
		</div>




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

<!-- 视频 文章区域切换卡 -->
<script type="text/javascript">
	var fun = function(arg1, arg2) {
		var tab = document.getElementById(arg1);
		var button = tab.getElementsByTagName("button");
		var tab2 = document.getElementById(arg2);
		var div = tab2.getElementsByClassName("row");

		for ( var i = 0; i < button.length; i++) {
			button[i].index = i;
			button[i].onclick = function() {
				for ( var i = 0; i < button.length; i++) {
					button[i].className = "btn btn-default btn-sm";
					div[i].style.display = "none";
				}
				this.className = "btn btn-primary btn-sm";
				div[this.index].style.display = "block";
			};
		}

	};

	/* 	 function turn() {
	 fun("type1", "tab1");
	 fun("type2", "type2");
	 fun("type3", "type3");
	 }; */
</script>
</html>