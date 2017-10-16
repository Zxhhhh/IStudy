<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String pages = request.getParameter("pages"); %>
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation">
				  <ul class="nav nav-sidebar" style="margin-top:50px">
					<li <%if("index".equals(pages)){ %>class="active"<%} %>><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
					<li <%if("shows".equals(pages)){ %>class="active"<%} %>><a href="servlet/VideoServlet?flag=page" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>爱学视频库</a></li>
					<li <%if("history".equals(pages)){ %>class="active"<%} %>><a href="live.jsp" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>爱学直播间</a></li>
					<li <%if("movies".equals(pages)){ %>class="active"<%} %>><a href="study.jsp" class="user-icon"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>爱学之路</a></li>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li <%if("sports".equals(pages)){ %>class="active"<%} %>><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>爱学讨论区<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="discuss.jsp?type=1">学习经验分享</a></li>                                             
							<li><a href="discuss.jsp?type=2">学习疑难咨询</a></li>
							<li><a href="discuss.jsp?type=3">休闲一下</a></li> 
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
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
							<img src="images/iStudyQRcode.png" width="80" height="80" style="margin-left:70px">
						
						<div class="copyright">
							<p style="margin-left:50px">@Author:W.H.Y</p>
						</div>
					</div>
				</div>
        </div>
