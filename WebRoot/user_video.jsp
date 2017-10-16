<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@page import="com.why.vo.VO4VideoTypeShowRtn"%>
<%@page import="com.why.vo.VO4LevelShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<%
	  request.setCharacterEncoding("utf-8");
	  response.setCharacterEncoding("utf-8");
	  
	 String user_id = request.getParameter("user_id");
	VO4UserShowRtn usr = new UserService().queryById(user_id);
	  
	  if(user_id==null){
		 response.sendRedirect("index.jsp"); 
	  }
	  
	%>
<title><%=usr.getUser_name() %>的视频</title>
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
	<jsp:param value="sports" name="pages"/>
	</jsp:include>	
	<!-- 侧边栏 -->
		
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
			
				<div class="recommended">
					<div class="recommended-grids english-grid">
						<div class="recommended-info">
							<div class="heading">
						
								<h3><%=usr.getUser_name() %>的视频</h3>
							</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="about.jsp?user_id=<%=user_id %>">
									返回
								</a>
							<div class="clearfix"> </div>
						</div>
						<% List<VO4VideoShowRtn> vsrList = new VideoService().queryByAuthor(usr.getUser_name());
							for(VO4VideoShowRtn vsr:vsrList){
						%>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="video_single.jsp?video_id=<%=vsr.getVideo_id() %>" class="title"><%=vsr.getVideo_name() %><img src="<%=vsr.getVideo_pic() %>" alt="" style="width:193px;height:108px" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="video_single.jsp?video_id=<%=vsr.getVideo_id() %>" class="title"><%=vsr.getVideo_name() %></a></h5>
								<p class="author"><a href="#" class="author"><%=vsr.getVideo_author() %></a></p>
								<p class="views"><%=vsr.getVideo_count() %> views</p>
							</div>
						</div>
						<%
							}
						%>
						
						<div class="clearfix"> </div>
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
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>