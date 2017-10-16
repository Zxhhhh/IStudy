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
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<link href="css/bootstrap-responsive.min.css" rel='stylesheet'
	type='text/css'>
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.js"></script>

<script type="text/javascript">
	$(function() {
		$('#myfile').change(function() {
			var file = this.files[0];
			var reader = new FileReader();
			reader.onload = function() {
				var url = reader.result;
				setImageURL(url);
			};
			reader.readAsDataURL(file);
		});
		var image = $("#previewImg")[0];
		function setImageURL(url) {
			image.src = url;
		}
		
		var la = $("#large");
		la.hide();
		
		$("#previewImg").mousemove(function(e){
			la.css({
				position:'absolute',
				top:e.pageY-150,
				left:e.pageX-150
			}).html('<img src = "'+this.src+'"/>').show();
		}).mouseout(function(){
			la.hide();
		});
		
	});
</script>

</head>
<body>

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

					<%
						String user_account = (String) session.getAttribute("user_account");
						VO4UserShowRtn usr = new UserService().queryByName(user_account);
					%>
					<h3>更改上传</h3>
					<div
						style="width:50%;height:150px;margin-left:200px;margin-left:10px">
						<form class="form-horizontal"
							action="servlet/UserServlet?flag=logoUpload"
							enctype="multipart/form-data" method="post">
							<table class="table">
								<tr>
									<td><strong style="font-size:18px">选择路径</strong></td>
									<td><input id="myfile" type="file" name="photo"></td>
								</tr>
								<tr>
									<td><strong style="font-size:18px">效果预览</strong></td>
									<td><img id="previewImg" src="images/user_logo.jpg"
										width="80px" height="80px" style="float:left" /></td>
									<div id="large"></div>
								</tr>

								<tr>
									<td><input type="submit" value="上传"
										class="btn btn-primary"></td>
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