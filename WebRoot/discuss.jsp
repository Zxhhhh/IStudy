<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="com.why.vo.VO4LiveShowRtn"%>
<%@ page import="java.util.*"%>
<%@ page import="com.why.service.LiveService"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学讨论区</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!-- 在线编辑器 -->
<link href="res_umeditor1_2_2/themes/default/css/umeditor.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="res_umeditor1_2_2/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="res_umeditor1_2_2/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="res_umeditor1_2_2/umeditor.min.js"></script>
<script type="text/javascript"
	src="res_umeditor1_2_2/lang/zh-cn/zh-cn.js"></script>
<!-- 在线编辑器 -->

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
<script src="js/jquery-1.11.1.min.js"></script>

<style type="text/css">
.up {
	background-color: #C0C0C0;
}

.out {
	background-color: #FFFFFF
}
</style>

<!-- //fonts -->

</head>
<body>
	<%
		String typeName = "";
		String type = request.getParameter("type");
		int x = 0;
		if (type != null) {
			x = Integer.parseInt(type);
		}
		System.out.println(x);
		switch (x) {
			case 1 : {
				typeName = "学习经验分享";
				break;
			}
			case 2 : {
				typeName = "学习疑难咨询";
				break;
			}
			case 3 : {
				typeName = "休闲一下";
				break;
			}

			default :
				typeName = "休闲一下";
		}
	%>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp">
		<jsp:param value="live" name="pages" />
	</jsp:include>
	<!-- 侧边栏 -->


	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids" style="background-color:#ECECEC">

			<div class="container" style="background-color:#ECECEC">

				<!-- 区域1-->
				<div class="top"
					style="width:100%;height:245px;margin-top:10px;padding:5px;background:url('images/iStudy_logo.png') top right no-repeat;background-color:#ffffff">
					<div class="title"
						style="border-bottom:2px solid lightgrey;width:100%;height:77px;padding:10px">
						<img src="images/pr1.png" height="60" width="60" alt="iStudy;"
							style="float:left" />
						<div
							style="height:52px;float:left;padding-left:5px;margin-bottom:20px">
							<h4>
								<strong>iStudy讨论区</strong>
							</h4>
							<a class="btn btn-primary btn-xs" role="button">+添加关注</a>
						</div>
						<div
							style="height:52px;float:left;padding-left:5px;margin-bottom:20px;padding:10px">
							<p>
								<span style="color:gray">关注</span>:5
							</p>
							<p>
								交流主题：<span style="color:darkorange"><%=typeName%></span>
							</p>
						</div>
					</div>

					<div class="title" style="width:100%;height:160px;padding:10px">

						<dl class="bus_rules" style="margin-top:20px">
							<font color="#666666"> 爱学官网： <font color="red">www.iStudy.edu.com</font>
								<br> <br> 请妥善保管账号 <br> 如果通过非官方渠道交易出现问题官方不负任何责任 <br>
								<br> <font color="blue">QQ群：</font> 219790581 <br> <font
								color="blue">联系方式：</font> 13533070038
							</font>
						</dl>

					</div>

				</div>


				<!-- 区域2:滚动条-->
				<div class="middle-1"
					style="width:100%;height:200px;margin-top:10px;padding:5px;background-color:#ffffff;overflow:auto;">


					<h5 style="color:#00FFFF">#快问快答<img src="images/discussLive.png" style="margin-left:10px"></h5>

					<div style="border:1px solid lightgray">

						<!-- 第一个 -->
						<div class="single"
							style="width:98%;height:60px;margin-top:10px;border-bottom:1px solid lightgray;border-bottom:1px dashed lightgray"
							onmouseover="this.className='up'"
							onMouseOut="this.className='out'">

							<img src="images/discussUser.gif" height="40" width="40"
								style="float:left;margin-left:5px" />

							<div style="height:52px;float:left;padding-left:20px;">
								<span style="color:#00FFFF;font-size:14px">Lhy</span> 
								<p style="margin-top:10px">请问Java主播是固定几点开始的</p>
							</div>

							<div
								style="height:52px;float:left;padding-left:5px;margin-bottom:20px;padding:10px;float:right"
								class="col-md-1">1天前</div>
						</div>


						<!-- 第二个 -->
						<div class="single"
							style="width:98%;height:60px;margin-top:15px;border-bottom:1px solid lightgray;border-bottom:1px dashed lightgray"
							onmouseover="this.className='up'"
							onMouseOut="this.className='out'">

							<img src="images/discussUser.gif" height="40" width="40"
								style="float:left;margin-left:5px" />

							<div style="height:52px;float:left;padding-left:20px;">
								<span style="color:#00FFFF;font-size:14px">Zxhhh</span>
								<p style="margin-top:10px">加油加油</p>
							</div>

							<div
								style="height:52px;float:left;padding-left:5px;margin-bottom:20px;padding:10px;float:right"
								class="col-md-1">1天前</div>
						</div>


						<!-- 第三个 -->
						<div class="single"
							style="width:98%;height:60px;margin-top:15px;border-bottom:1px solid lightgray;border-bottom:1px dashed lightgray"
							onmouseover="this.className='up'"
							onMouseOut="this.className='out'">

							<img src="images/discussUser.gif" height="40" width="40"
								style="float:left;margin-left:5px" />

							<div style="height:52px;float:left;padding-left:20px;">
								<span style="color:#00FFFF;font-size:14px">Way</span>
								<p style="margin-top:10px">什么时候开发积分兑换功能啊</p>
							</div>

							<div
								style="height:52px;float:left;padding-left:5px;margin-bottom:20px;padding:10px;float:right"
								class="col-md-1">1天前</div>
						</div>
						
					<textarea style="width:98%;height:65px">#在这里快速回复</textarea>
					<button class="btn btn-primary" style="margin-top:5px">回复</button>
					</div>
				</div>

			

			<!-- 区域3:-->
			<div class="middle-2"
				style="width:100%;margin-top:10px;padding:5px;background-color:#ffffff;">

				<div class="navbar">
					<ul class="nav nav-pills">
						<li><a href="#tab1">全站</a></li>
						<li><a href="#tab2">视频</a></li>
						<li><a href="#tab3">直播</a></li>
						<li><a href="#tab4">文章</a></li>
					</ul>
				</div>

				<div class="content" style="width:100%">

					<%
						for (int i = 0; i < 10; i++) {
					%>
					<!-- 一个帖子 -->
					<div class="single"
						style="width:100%;height:70px;padding:10px;margin-top:10px;border-bottom:1px solid lightgray"
						onmouseover="this.className='up'"
						onMouseOut="this.className='out'">

						<img src="images/discussUser.gif" height="48" width="48"
							style="float:left" />

						<div
							style="height:52px;float:left;padding-left:25px;margin-bottom:20px">
							<h5>
								<strong>求Zxh的微信</strong> <img src="images/new.gif"> <img
									src="images/good.gif">
							</h5>
							<p>
								<span style="color:gray">作者:</span>Zxh &nbsp;&nbsp;&nbsp;&nbsp;<span
									style="color:gray">发表时间:</span>2016-11-11
							</p>
						</div>

						<div
							style="height:52px;float:left;padding-left:5px;margin-bottom:20px;padding:10px;float:right"
							class="col-md-1">

							<button class="btn btn-default disabled btn-sm">0/51</button>
						</div>

					</div>
					<%
						}
					%>


				</div>
			</div>

			<!-- 区域3:-->
			<div class="weibu"
				style="width: 100%;margin-top:5px;padding:10px;background-color:#ffffff">

				<div style="width:100%;height:50px;padding:10px">

					<input class="form-control col-md-4" style="width:30%" type="text"><span
						style="font-size:15px;padding-top:10px;margin-left:10px">你还可以输入<span
						style="color:red">10</span>个字符
					</span>
				</div>
				<textarea style="width:100%;height:200px" id="myEditor"></textarea>
				<script>
					UM.getEditor('myEditor', {});
				</script>

				<button class="btn btn-primary" style="margin-top:15px">发表</button>
			</div>

		</div>

		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->
		</div>

		



		<div class="clearfix"></div>
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
</html>