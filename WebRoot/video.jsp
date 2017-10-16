<%@page import="com.why.util.SplitPageUtil"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学视频</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<!--<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> -->
<!-- //fonts -->
<style type="text/css">
.item img{
width:100%;  
height:200px;
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
					<div class="carousel slide" id="carousel-176744">
						<ol class="carousel-indicators">
							<li class="active" data-target="#carousel-176744"
								data-slide-to="0"></li>
							<li data-target="#carousel-176744" data-slide-to="1"></li>
							<li data-target="#carousel-176744" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption">
<!-- 									<h4>Second Thumbnail label</h4>
									<p>Cras justo odio, dNu</p> -->
								</div>
							</div>
							<div class="item">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption">
<!-- 									<h4>Third Thumbnail label</h4>
									<p>Cras justo odio, mi poe elit.</p> -->
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-176744"
							data-slide="prev"><span
							class="glyphicon glyphicon-chevron-left"></span> </a> <a
							class="right carousel-control" href="#carousel-176744"
							data-slide="next"><span
							class="glyphicon glyphicon-chevron-right"></span> </a>
					</div>
				</div>
			</div>
		</div>


		<div class="show-top-grids">


			<div class="col-sm-10 show-grid-left main-grids">

				<div class="recommended">


					<div class="recommended-grids english-grid">
						<ul class="nav nav-tabs nav-pills  nav-justified">
							<li id="msg1" role="presentation" <%if ("1".equals(type)) {%>
								class="active" <%}%>><a href="video.jsp?type=1">按发布时间分</a>
							</li>
							<li id="msg2" role="presentation" <%if ("2".equals(type)) {%>
								class="active" <%}%>><a href="video.jsp?type=2">按视频类型分</a>
							</li>
							<li id="msg3" role="presentation" <%if ("3".equals(type)) {%>
								class="active" <%}%>><a href="video.jsp?type=3">按学习难度分</a>
							</li>
						</ul>

						<%
							if ("2".equals(type)) {

								List<VO4VideoTypeShowRtn> vtsrList = new VideoService()
										.queryAllType();
								for (VO4VideoTypeShowRtn vtsr : vtsrList) {
									List<VO4VideoShowRtn> vsrList = new VideoService()
											.queryByOthers_small("video_type",
													vtsr.getType_id());
						%>
						<div class="recommended-info" style="margin-top:50px;clear: both ;"
							>
							<div class="heading">
								<h3><%=vtsr.getType_name()%></h3>
							</div>
							<div style="float: right;">
								<a
									href="video_all.jsp?type=video_type&value=<%=vtsr.getType_id()%>"
									style="text-decoration: none;">更多&gt;</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<%
							for (VO4VideoShowRtn vsr : vsrList) {
						%>
						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">
								<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"><img
									src="<%=vsr.getVideo_pic()%>" alt=""
									style="width:156px;height:100px" /> </a>
<!-- 								<div class="time small-time show-time">
									<p style="float:right">7:34</p>
								</div>
								<div class="clck show-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div> -->
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5>
									<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"
										class="title"><abbr title="<%=vsr.getVideo_summary()%>"><%=vsr.getVideo_name()%></abbr>
									</a>
								</h5>
								<p class="author">
									<a href="#" class="author"><%=vsr.getVideo_author()%></a>
								</p>
								<p class="views"><%=vsr.getVideo_count()%>
									人看过
								</p>
							</div>
						</div>

						<%
							}
									for (int i = 0; i < 16; i++) {
						%>
						<br>
						<%
							}
								}
							} else if ("3".equals(type)) {

								List<VO4LevelShowRtn> lsrList = new VideoService()
										.queryAllLevel();
								for (VO4LevelShowRtn lsr : lsrList) {
									List<VO4VideoShowRtn> vsrList = new VideoService()
											.queryByOthers_small("level", lsr.getLevel_id());
						%>
						<div class="recommended-info" style="margin-top:50px;clear: both ;"
							>
							<div class="heading">
								<h3><%=lsr.getLevel_name()%></h3>
							</div>
							<div style="float: right;">
								<a href="video_all.jsp?type=level&value=<%=lsr.getLevel_id()%>"
									style="text-decoration: none;">更多&gt;</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<%
							for (VO4VideoShowRtn vsr : vsrList) {
						%>
						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">
								<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"><img
									src="<%=vsr.getVideo_pic()%>" alt=""
									style="width:156px;height:100px" /> </a>
								<!-- <div class="time small-time show-time">
									<p>7:34</p>
								</div>
								<div class="clck show-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div> -->
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5>
									<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"
										class="title"><abbr title="<%=vsr.getVideo_summary()%>"><%=vsr.getVideo_name()%></abbr>
									</a>
								</h5>
								<p class="author">
									<a href="#" class="author"><%=vsr.getVideo_author()%></a>
								</p>
								<p class="views"><%=vsr.getVideo_count()%>
									人看过
								</p>
							</div>
						</div>

						<%
							}
									for (int i = 0; i < 16; i++) {
						%>
						<br>
						<%
							}
								}
							} else if ("1".equals(type)) {

								VO4VideoAndTimeShowRtn vatsr = new VideoService().queryByTime();
								List<String> yearList = vatsr.getVideoYearList();
								for (String year : yearList) {
						%>
						<div class="recommended-info" style="margin-top:50px;clear: both ;"
						>
							<div class="heading">
								<h3><%=year%>年
								</h3>
							</div>
							<div style="float: right;">
								<a href="video_all.jsp?type=level&value=<%=year%>"
									style="text-decoration: none;">更多&gt;</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<%
							List<VO4VideoShowRtn> vsrList = vatsr.getVideoYearMap()
											.get(year);
									for (VO4VideoShowRtn vsr : vsrList) {
						%>
						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">
								<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"><img
									src="<%=vsr.getVideo_pic()%>" alt=""
									style="width:156px;height:100px" /> </a>
								<!-- 视频时间 --><!-- <div class="time small-time show-time">
									<p>7:34</p>
								</div> 
								<div class="clck show-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>-->
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5>
									<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"
										class="title"><abbr title="<%=vsr.getVideo_summary()%>"><%=vsr.getVideo_name()%></abbr>
									</a>
								</h5>
								<p class="author">
									<a href="#" class="author"><%=vsr.getVideo_author()%></a>
								</p>
								<p class="views"><%=vsr.getVideo_count()%>
									人看过
								</p>
							</div>
						</div>

						<%
							}
									for (int i = 0; i < 16; i++) {
						%>
						<br>
						<%
							}
								}
							} else {
								//List<VO4VideoShowRtn> vsrList = new VideoService().queryAll();
								SplitPageUtil spu = (SplitPageUtil)session.getAttribute("spu");
								List<VO4VideoShowRtn> vsrList = new VideoService().queryAll_page(((SplitPageUtil)(session.getAttribute("spu"))));
						%>

						
						<div class="recommended-info" style="margin-top:50px;clear: both ;"
							>
							<div class="heading">
								<h2>
									<strong>精选视频</strong>
								</h2>
							</div>
							<div class="heading-right"></div>
							<div class="clearfix"></div>
						</div>

						<%
							for (VO4VideoShowRtn vsr : vsrList) {
						%>
						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">
								<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"><img
									src="<%=vsr.getVideo_pic()%>" alt=""
									style="width:156px;height:100px" /> </a>
<!-- 								<div class="time small-time show-time">
									<p>7:34</p>
								</div>
								<div class="clck show-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div> -->
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5>
									<a href="video_single.jsp?video_id=<%=vsr.getVideo_id()%>"
										class="title"><abbr title="<%=vsr.getVideo_summary()%>"><%=vsr.getVideo_name()%></abbr></a>
								</h5>
								<p class="author">
									<a href="#" class="author"><%=vsr.getVideo_author()%></a>
								</p>
								<p class="views"><%=vsr.getVideo_count()%>
									人看过
								</p>
							</div>
						</div>
						<%
							}
						
						
						
						
						int currentPage = Integer.parseInt(request.getParameter("currentpage"));
						%>
						<div style="width: auto;height: 150px;"></div>
						<div style="width:100%;height:250px"></div>
						<table border="0" align="center" style="    margin-left: 25px;display:block;float:left" >
						
								<tr>
									<td>第<%=spu.currentPage %>页 共<%=spu.getTotalPages() %>页 &nbsp;&nbsp;<a  href="servlet/VideoServlet?flag=page&toPage=1">首页</a> </td>
									<td>&nbsp;&nbsp;&nbsp;</td>
									<td><%if(spu.isPrePage){ %><a  href="servlet/VideoServlet?flag=page&toPage=<%=(currentPage-1)%>"> 上一页</a><%}else{%><a href="#" class="">上一页</a><%} %> </td>
									<td>&nbsp;&nbsp;&nbsp;</td>
									<td><%if(spu.isNextPage){ %><a  href="servlet/VideoServlet?flag=page&toPage=<%=(currentPage+1)%>"> 下一页</a><%}else{%><a href="#" class="">下一页</a><%} %> </td>
									<td>&nbsp;&nbsp;&nbsp;</td>
									<td><a  href="servlet/VideoServlet?flag=page&toPage=<%=spu.totalPages%>">最后一页</a> </td>
									<td>&nbsp;&nbsp;&nbsp;</td>
									<td>转到第:<input type="text" name="page" size="8">页 <input type="submit" value="GO" name="cndok"></td>
								</tr>
						</table> 

						
						
						<% 
							}
						%>

						<div class="clearfix"></div>
					</div>
				</div>
			

			</div>

			<!-- 右侧栏 -->
			<div class="col-md-2 show-grid-right">
				<h3>最受欢迎的视频</h3>
				<%
					List<VO4VideoTopShowRtn> vtsrList = new VideoService()
							.queryVideoTop();
					for (VO4VideoTopShowRtn vtsr : vtsrList) {
				%>

				<div class="show-right-grids">
					<ul>
						<li class="tv-img"><a href="#"><img src="images/tv.png"
								alt="" /> </a></li>
						<li><a href="#"><%=vtsr.getVideo_name()%></a></li>
						<br>
						<li style="margin-left:40px">热度:<%=vtsr.getVideo_count()%></li>
					</ul>
				</div>
				<%
					}
				%>
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