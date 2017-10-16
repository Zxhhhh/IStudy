<%@page import="java.util.List"%>
<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
	response.setContentType("text/html;charset=UTF-8");
%>

<%
							String user_account = (String) session.getAttribute("user_account");
							String user_id = request.getParameter("user_id");
							VO4UserShowRtn usr = new UserService().queryById(user_id);
%>

<!DOCTYPE HTML>
<html>
<head>
<title>用户中心</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />

<!-- 通知框 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="themes/original.css" rel="stylesheet">
<script src='js/humane.js'></script>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/layer/layer.js"></script>



<style type="text/css"> 

.up{background-color:#eee} 
.out{background-color:#FFFFFF}

body{
	color:#333;
	font-family:-apple-system,SF UI Text,Arial,PingFang SC,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,sans-serif;
}

.info{
	
	margin-top:15px;
	padding-left:5px;
	font-size: 14px;
}

.info ul{
	margin-bottom: 10px;
	box-sizing:border-box;
	
}

.info li{
	display:inline-block;
	line-height:20px;
}

.meta-block{
	
	font-size: 17px;
	margin:0 7px 6px 0;
	padding:0 7px 0 0;
	border-right: 1px solid #f0f0f0;
	color:#969696;
}

.meta-block a{

	text-decoration: none;
	margin-right:10px;
	color:#969696;

}

.meta-block p{
	color:#333;
}

</style> 

<script type="text/javascript">

	$(function(){
	
		$("#followLimitBtn").click(function(){
			
			$.ajax({
				
				type:"post",
				async:true,
				url:"user_limitShow.jsp?user_id=<%=user_id%>",
				success:function(result){
					
					$("#limitShowContent").html(result);
				
				}
				
			});
		});
		
		$("#uploadVideoBtn").click(function(){
		
			
		
			 $.ajax({
				
				type:"post",
				async:true,
				url:"user_uploadThing.jsp",
				success:function(result){
				
					layer.open({
							title:"上传新视频",
							type:1,
							scrollbar:0,
							closeBtn:1,
							area:['500px', '500px'],
							content:result
						});		
					
				}
			}); 
		});
	
	})


</script>


</head>
<body>

	<%
		String responseInfo = (String) session.getAttribute("responseInfo");
		if (responseInfo != null) {
			session.removeAttribute("responseInfo");
	%>
	<script>
	  humane.baseCls = 'humane-original';
	  eval(humane.log("<%=responseInfo%>"));
	</script>
	<%
		}
	%>
	
		<%String myid = (String)session.getAttribute("user_id");
		  List<VO4UserShowRtn> usrList = new UserService().followQuery(myid);  %>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->


	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- 侧边栏 -->

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="main-grids about-main-grids">
				<div class="recommended-info">
				
				<div style="width:100%;margin-top:30px">

					<div
						style="width:100%;height:150px;margin-left:200px;margin-left:10px">
						<div style="display: inline-block;height:100%">
						<%if(usr.getUser_pic()==null){ %>
						
								
									<img src="images/user_logo.jpg;" class="img-circle"
								style="float:left" />
						<%}else{ %>
								<img src="userLogo/<%=usr.getUser_pic() %>;" class="img-circle"
									style="float:left" width="100" height="100" />
						<%} %>
						</div>
						
						<div id="user_name" style="width:50%;height:100%;display:inline-block;margin-left:0%;position:absolute;">
							
							<strong style="font-size:30px;margin-top:1px;padding:5px"><%=usr.getUser_name()%></strong>
							
							<span style="margin-left:3px;border:1px solid #ea6f5a; border-radius:3px;font-size:13px; color:#ea6f5a;padding:2px">
								<img src="images/userImg/role_ anchor.png"/>
								签约主播
							</span>
							

							<%if (!user_id.equals(myid)) {
							
							%>
							<a role="button" href="#" class="btn" style="margin-left:30%;border-radius:20px;border:1px solid green;color:#42c02e">发私信</a>
							<%
								if(new UserService().isFollow(myid,user_id)){
							%>
								<a href="servlet/UserServlet?flag=followDelete&otherid=<%=user_id%>">
									<input style="margin-left:15px;border-radius:20px" type="button" class="btn btn-danger"value="-取消关注">
								</a>
							<%
							
								}else{ %>
								<a  href="servlet/UserServlet?flag=followAdd&otherid=<%=user_id%>">
									<input style="margin-left:15px;border-radius:20px;"  type="button" class="btn btn-success"value="+添加关注">
								</a>
								<%} 
							}
								%>	
							<br>
							<table class="table-condensed">
							
							<tr>
								<div class="info">
									<ul>
										<li>
											<div class="meta-block">
												<a id="followLimitBtn"  href="#">
													<p>5</p>
													关注<i class="glyphicon glyphicon-chevron-right"></i>
												</a>
											</div>
										</li>
										<li>
											<div class="meta-block">
												<a id="videoLimitBtn" href="user_video.jsp?user_id=<%=user_id %>">
													<p>10</p>
													视频<i class="glyphicon glyphicon-chevron-right"></i>
												</a>
											</div>
										</li>
										<li>
											<div class="meta-block">
												<a id="articleLimitBtn" href="#">
													<p>21</p>
													文章<i class="glyphicon glyphicon-chevron-right"></i>
												</a>
											</div>
										</li>
										<li>
											<div class="meta-block">
												<a id="courseLimitBtn" href="#">
													<p>3</p>
													课程<i class="glyphicon glyphicon-chevron-right"></i>
												</a>
											</div>
										</li>
									
									</ul>
								</div>							
							</tr>
							</table>
						</div>
						<div id="limitShowContent" style="float:right;margin-right:10%;width:40%;height:100%"></div>
					</div>
					
					</div>
					
			
					
					<ul class="nav nav-tabs"  id="myTab" style="margin:0px;width:45%">
						<li role="presentation"  class="active"><a href="#info" data-toggle="tab"><span style="font-size:13px" class="glyphicon glyphicon-user">个人信息</span></a></li>				
						<li role="presentation"><a href="#operate" data-toggle="tab"><span style="font-size:13px" class="glyphicon glyphicon-piggy-bank">操作</span></a></li>		
						<li role="presentation"><a href="#comment" data-toggle="tab"><span style="font-size:13px" class="glyphicon glyphicon-comment">最新留言</span></a></li>
						<li role="presentation"><a href="#movement" data-toggle="tab"><span style="font-size:13px" class="glyphicon glyphicon-flag">动态</span></a></li>
					</ul>
					<jsp:include page="rightbar_user.jsp">
							<jsp:param value="<%=user_id %>" name="userId"/>
					</jsp:include>
					<div class="tab-content" id="myTabContent" style="width:50%;display:inline-block;" >
				
						<div class="tab-pane fade active in" id="info" style="overflow:auto; ">
						
							<table class="table table-hover " style="width:70%;margin-left:10%;margin-top:5%;padding:30px">
								<caption style="font-size:21px;margin-left:15%"><%=usr.getUser_name() %>的个人信息</strong></caption>
								<tr style="padding:7px;margin-top:10px">
									<td>
										<span style="font-size:17px">
											 <i class="glyphicon glyphicon-leaf"></i>
											<strong>性别:</strong>
										</span>
									</td>
									<td>
										 <span style="font-size:15px">
											 <strong>
												<%
												if ("male".equals(usr.getUser_sex())) {
													%>男<%
												} else {
													%>女<%
												}
											%>
											</strong>
										</span>
									</td>
								</tr>
								<tr style="padding:7px;margin-top:10px">
									<td>
										<span style="font-size:17px">
											<i class="glyphicon glyphicon-tower"></i>
											<strong>年龄:</strong>
										</span>
									</td>
									<td>
										<span style="font-size:17px"><%=usr.getUser_age()%></span>
									</td>
								</tr>
								
								<tr style="padding:7px;margin-top:10px">
									<td>
										<span style="font-size:17px">
											<i class="glyphicon glyphicon-envelope"></i>
											<strong>邮箱:</strong>
										</span>
									</td>
									<td><span style="font-size:17px"><%=usr.getUser_email()%></span></td>
								</tr>
								
								<tr style="padding:7px;margin-top:10px">
									<td>
										<span style="font-size:17px">
											<i class="glyphicon glyphicon-yen"></i>
											<strong>个人积分</strong>
										</span>
									</td>
									<td>
										<span style="font-size: 17px"><%=usr.getUser_points()%>&nbsp;<img src="images/gold.png"></span>
									</td>
									
								</tr>
								
								
								
								<%if (user_id.equals(myid)){ %>
								<tr style="padding:7px;margin-top:10px">
									<td>
										<a  href="user_edit.jsp?" role="button" class="btn btn-default">
											<i class="glyphicon glyphicon-pencil"></i>
												修改
										</a>
									</td>
								</tr>
								<%} %>
												
							</table>
						</div>
						<div class="tab-pane fade " id="operate">
							
								<%
									if (!user_id.equals((String) session.getAttribute("user_id"))) {
								%>
								<div class="about-grids">
			
									<div class="about-bottom-grids">
			
										<div class="col-sm-6 about-left" style="border-radius:5px">
											<div class="about-left-grids">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-folder-open"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="#">查看相册</a>
													<p>查看该用户上传的照片</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="col-sm-6 about-right">
											<div class="about-left-grids">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="user_edit.jsp?">为他留言</a>
													<p>访问留言板,为该用户留言</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
			
			
								</div>
			
								<%
									} else {
								%>
								<div class="about-grids">
			
									<div class="about-bottom-grids">
			
										<div class="col-sm-6 about-left" >
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-folder-open"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a id="uploadVideoBtn" href="#">上传视频</a>
													<p >上传视频支持.avi,mp4等格式,单个视频不超过80MB</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="col-sm-6 about-right">
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="user_edit.jsp?">账户设置</a>
													<p>在此修改你的个人资料和上传新头像</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
			
									<div class="about-bottom-grids">
										<div class="col-sm-6 about-left">
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-book"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="#">相册</a>
													<p>在此存储本空间的学习截图和个人相片</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
			
										<div class="col-sm-6 about-right">
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-headphones"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="#">我的主题</a>
													<p>在此查看你在讨论区发布的主题状态，包括最新回复</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
			
									<div class="about-bottom-grids">
										<div class="col-sm-6 about-left">
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-comment"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="user_comment.jsp?user_id=<%=user_id%>">留言板</a>
													<p>在此查看并回复其他用户对你的留言</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
			
										<div class="col-sm-6 about-right">
											<div class="about-left-grids" style="border-radius:10px">
												<div class="col-md-2 about-left-img">
													<span class="glyphicon glyphicon-user glyphicon-usd"
														aria-hidden="true"></span>
												</div>
												<div class="col-md-10 about-left-info">
													<a href="#">积分管理</a>
													<p>在此查看你的积分，积分可通过观看爱学直播和学习视频获得，也可直接通过充值获得</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
			
								</div>
								<%
									}
								%>
						</div>
						
					<div id="comment" class="tab-pane fade ">
						<jsp:include page="user_comment.jsp">
							<jsp:param value="<%=user_id %>" name="user_id"/>
						</jsp:include>
					</div>
						
					<div class="tab-pane fade" id="movement">
					
						<jsp:include page="user_movement.jsp"></jsp:include>
					
					</div>
						
					</div>

				</div>
			</div>
		</div>

		<div style="height:400px"></div>
		
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