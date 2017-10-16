<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>About</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<link href="css/bootstrap-responsive.min.css" rel='stylesheet'
	type='text/css'>
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>

<!-- 通知框 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="themes/original.css" rel="stylesheet">
<script src='js/humane.js'></script>

</head>
<body>
	<%String[] uploadLogo = new String[]{"上传成功","上传失败，请稍后再试","找不到该用户"}; 
	  String uploadLogoRtn = request.getParameter("uploadLogoRtn");
	  if(uploadLogoRtn!=null){
		  int i = Integer.parseInt(uploadLogoRtn);
	  
	%>
	<script type="text/javascript">
	  humane.baseCls = 'humane-original';
	  eval(humane.log("<%=uploadLogo[i]%>"));
	</script>
	
	<%} %>

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
	
					<%String user_account = (String)session.getAttribute("user_account");
					VO4UserShowRtn usr = new UserService().queryByName(user_account); %>
					<h3>个人资料编辑</h3>
					<div
						style="width:50%;height:150px;margin-left:200px;margin-left:10px">
						<form class="form-horizontal" action="servlet/UserServlet?flag=update" method="post">
							<table class="table">
								<tr>
									<td><strong style="font-size:18px">头像</strong></td>
									<td><img <%if(usr.getUser_pic()==null){ %>src="images/user_logo.jpg"<%}else{ %>src="userLogo/<%=usr.getUser_pic() %>"<%} %> width="80" height="80" >
										<span style="margin-left:15px"><a
											style="font-size:14px" href="user_logoUpload.jsp">上传头像</a> </span></td>
								</tr>
								<td><strong style="font-size:18px">性别</strong></td>
								<td><strong style="font-size:18px">男</strong><input
									type="radio" name="user_sex" value="male" <%if("male".equals(usr.getUser_sex())){ %> checked  <%} %> /> &nbsp;<strong
									style="font-size:18px">女</strong><input type="radio" name="user_sex"
									value="female" <%if("female".equals(usr.getUser_sex())){ %> checked<%} %> /> &nbsp;<strong style="font-size:18px">保密</strong><input
									type="radio" name="sex" value="no" /></td>
								<tr>
									<td><strong style="font-size:18px">邮箱</strong>
									<td><input type="text" class="form-control"
										style="width:300px" name="user_email" value="<%=usr.getUser_email()%>" required="required">
									</td>
								</tr>
								<tr>
									<td><strong style="font-size:18px">年龄</strong>
									<td><input type="text" class="form-control"
										style="width:300px" name="user_age" value="<%=usr.getUser_age()%>">
									</td>
								</tr>
								<tr>
								<td><strong style="font-size:18px">个人简介</strong></td>
								<td><textarea style="width:300px;height:120px" name="user_summary"><%=usr.getUser_summary() %></textarea></td>
								</tr>
								<tr>
									<td><strong style="font-size:18px">个人积分</strong></td>
									<td><strong style="font-size:18px"><%=usr.getUser_points() %><img src="images/gold.png"> &nbsp;<a style="font-size:18px">获取积分</a></strong></td>
								</tr>
								
								<tr>
								<td><input type="submit" value="保存" class="btn btn-primary"></td>
								</tr>


							</table>

						</form>

					</div>

					<div style="width:100%;height:400px"></div>



				</div>
			</div>
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