<%@page import="com.why.service.StudyService"%>
<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4VideoCommentShowRtn"%>
<%@page import="java.util.List"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
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
<script type="text/javascript" src="js/jwplayer.js"></script>

<script type="text/javascript">
/* 页面后退js */
function back(){
location.href=document.referrer;
}
</script>

</head>
<body>

	<%
		String userid =(String) session.getAttribute("user_id") ;
		String responseInfo = (String)session.getAttribute("responseInfo");
		  if(responseInfo!=null){
			  session.removeAttribute("responseInfo");
	%>
	<script>
	  humane.baseCls = 'humane-original';
	  eval(humane.log("<%=responseInfo%>"));
	</script>
	<%
		}
	%>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- 侧边栏 -->

	<%
		String video_id = request.getParameter("video_id");
		
			if(userid!=null&&video_id!=null&&!userid.equals("")&&!video_id.equals("")){
			int result = new StudyService().findStudyState(Integer.parseInt(userid));
			if(result==1){
		new StudyService().studyVideo(Integer.parseInt(userid), Integer.parseInt(video_id));
		}
			}
		VO4VideoShowRtn vsr = new VideoService().queryById(video_id);
		session.setAttribute("lastVisitVideo",vsr.getVideo_name());
	%>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="song">
					<div class="song-info">
					<font size="2px"><a href="#" onclick="back()">返回上一页</a></font>
						<h3><%=vsr.getVideo_name()%></h3>
						&nbsp; <font size="2px">作者:@<%=vsr.getVideo_author()%></font>
					</div>
					
					<%System.out.println(vsr.getVideo_url()); %>
					
					
					<div class="video-grid">
						<!-- <iframe src="https://www.youtube.com/embed/oYiT-vLjhC4" allowfullscreen></iframe> -->
						<iframe height=498 width=510
							src='http://player.youku.com/embed/XMTY3NDA0Mzk4OA=='
							frameborder=0'allowfullscreen'></iframe>
					</div>					
					
					<%-- <div class="video-grid" style="margin-top: 10px;" id='mediaspace' style=""   >
					
							<script type="text/javascript">
							
							
			  				jwplayer('mediaspace').setup({
			  			 	 'flashplayer': 'liveplayer/player.swf',
			   				 'file': '<%=vsr.getVideo_url()%>',
			   				 'controlbar': 'bottom',
			  		 		 'width': '120%',
			  		 		 'height': '450px',
			  		 		
			  		 		 
			 				 });
							</script>
					
					</div> --%>
					</div>
				
					 
<!-- 					 <div class="video-grid">
						<iframe src="https://www.youtube.com/embed/oYiT-vLjhC4" allowfullscreen></iframe>
						<iframe height=498 width=510
							src='http://player.youku.com/embed/XMTY3NDA0Mzk4OA=='
							frameborder=0'allowfullscreen'></iframe>
					</div> -->
					 
					
					
					
				<div class="song-grid-right">
					<div class="share">
						
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
								<h4>
									课程简介:<%=vsr.getVideo_summary()%></h4>
								<p><%=vsr.getVideo_content()%></p>
							</li>
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
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="all-comments">
					<div class="all-comments-info">
						<a href="#">所有评论(8,657)</a>

						<%
							if(session.getAttribute("user_account")==null){
						%>
						<div class="box"
							style="width:630px;height:200px;border:1px solid grey">
							<h1 style="margin-top:70px">
								<center>请先登录</center>
							</h1>
						</div>
						<%
							}else{
						%>
						<div class="box">
							<form action="servlet/VideoServlet?flag=addVideoComment"
								method="post">
								<input type="hidden" name="comment_videoid"
									value="<%=video_id%>">
								<textarea placeholder="我也来说两句..." required=" "
									name="comment_content"></textarea>
								<input type="submit" value="评论">
								<div class="clearfix"></div>
							</form>
						</div>
						<%} %>
						<div class="all-comments-buttons">
							<ul>
								<li><a href="#" class="top">最热评论</a></li>
								<li><a href="#" class="top newest">最新评论</a></li>
								<li><a href="#" class="top my-comment">我的评论</a></li>
							</ul>
						</div>
					</div>
					<div class="media-grids">

						<%
							List<VO4VideoCommentShowRtn> vcsrList = new VideoService().queryVideoCommentById(video_id);
										  for(VO4VideoCommentShowRtn vcsr:vcsrList){
											  String comment_userid = new UserService().queryByName(vcsr.getComment_username()).getUser_id();
											  System.out.println("id:"+comment_userid);
						%>

						<div class="media">
							<h5 style="display:inline-block"><%=vcsr.getComment_username()%></h5>
							<h6 style="float:right;color:#C0C0C0">
								发布时间:<%=vcsr.getComment_date().substring(0,vcsr.getComment_date().length()-5)%></h6>
							<div class="media-left">
								<img class="img-circle" src="images/user_logo.jpg"
									onclick="goUser(<%=comment_userid%>)">

								<!--<a href="about.jsp?user_id=<%=comment_userid%>" style="background-image:url('images/user_logo.jpg') "> </a>-->
							</div>
							<div class="media-body">
								<p><%=vcsr.getComment_content()%></p>
								<span>View all posts by :<a href="#"> Admin </a> </span>
							</div>
						</div>

						<%
							}
						%>
						<script>
						function goUser(id){
							window.location="about.jsp?user_id="+id;
						}
						
						</script>
						<div class="media">
							<h5>小明</h5>
							<div class="media-left">
								<a href="#"> </a>
							</div>
							<div class="media-body">
								<p>感谢老师，这个视频对我非常有帮助！</p>
								<span>View all posts by :<a href="#"> Admin </a> </span>
							</div>
						</div>

						<div class="media">
							<h5>小明</h5>
							<div class="media-left">
								<a href="#"> </a>
							</div>
							<div class="media-body">
								<p>感谢老师，这个视频对我非常有帮助！</p>
								<span>View all posts by :<a href="#"> Admin </a> </span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 single-right">
				<h3>你还可能感兴趣的视频:</h3>
				<div class="single-grid-right">
					<%
						List<VO4VideoShowRtn> vsr_rightList = new VideoService()
								.queryByOthers("video_type", vsr.getVideo_type());
						for (VO4VideoShowRtn vsr_right : vsr_rightList) {
					%>
					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img
								src="<%=vsr_right.getVideo_pic()%>" alt="" /> </a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"> <%=vsr_right.getVideo_name()%></a>
							<p class="author">
								<a href="#" class="author"><%=vsr_right.getVideo_author()%></a>
							</p>
							<p class="views"><%=vsr_right.getVideo_count()%>
								views
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<%
						}
					%>
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