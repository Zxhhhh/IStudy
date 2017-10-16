<%@page import="com.why.vo.VO4VideoTypeShowRtn"%>
<%@page import="com.why.vo.VO4LevelShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学视频库</title>
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
	<%
	  request.setCharacterEncoding("utf-8");
	  response.setCharacterEncoding("utf-8");
	  String type=request.getParameter("type");
	  String value = request.getParameter("value");
	  
	  if(type==null||value==null){
		 response.sendRedirect("index.jsp"); 
	  }
	  
	%>
	
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
							<%
							//String name = "";
							//if("level".equals(type)){
								//VO4LevelShowRtn lsr = new VideoService().queryLevelById(value);
								//name = lsr.getLevel_name();
							//}else if("video_type".equals(type)){
								//VO4VideoTypeShowRtn vtsr = new VideoService().queryVideoTypeById(value);
								//name= vtsr.getType_name();
						//	}
								%>
						
								<h3>全部视频</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">加入到收藏夹</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<% List<VO4VideoShowRtn> vsrList = new VideoService().queryByOthers(type, value);
							for(VO4VideoShowRtn vsr:vsrList){
						%>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/<%=vsr.getVideo_pic() %>" alt="" style="width:193px;height:108px" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title"><%=vsr.getVideo_name() %></a></h5>
								<p class="author"><a href="#" class="author"><%=vsr.getVideo_author() %></a></p>
								<p class="views"><%=vsr.getVideo_count() %> views</p>
							</div>
						</div>
						<%
							}
						%>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">足球训练之腿部训练</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">心理学基础</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g3.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">橄榄球常识</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">篮球教学</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">足球训练之战术跑位</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">篮球教学2</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/c2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.jsp" class="title">看动画学英语</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						
					
							
						<div class="clearfix"> </div>
					</div>
				</div>
				
				<!-- 
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<div class="heading">
								<h3>Top Most Videos</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp1.jpg" alt="" /></a>
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
								<a href="single.jsp"><img src="images/sp2.jpg" alt="" /></a>
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
								<a href="single.jsp"><img src="images/sp3.jpg" alt="" /></a>
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
								<a href="single.jsp"><img src="images/sp4.jpg" alt="" /></a>
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
								<a href="single.jsp"><img src="images/sp5.jpg" alt="" /></a>
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
								<a href="single.jsp"><img src="images/sp6.jpg" alt="" /></a>
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
								<h3>Popular Sports Videos</h3>
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
			 -->
			
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