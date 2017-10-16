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
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td
	{
	margin: 0;
	padding: 0;
}

.program-main {
	background-color: #ffffff;
	position: relative;
	padding-top: 1px;
	padding-bottom: 10px;
}

.clearfix {
	*zoom: 1:;
}

.clearfix {
	*zoom: 1:;
}

.program-wrap {
	width: 1200px;
	margin: 0 auto 0;
}

.course-nav-row {
	padding: 15px 0 5px;
	border-bottom: 1px solid #edf1f2;
}

.course-tool-bar {
	position: relative;
	margin-top: -1px;
	padding-right: 15px;
	height: 40px;
	background-color: #f9f9f9;
	border-top: 1px solid #d0d6d9;
	font-size: 12px;
}

.clearfix::after {
	content: "\0020";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
}

.clearfix::after {
	content: "\0020";
	display: block;
	height: 0px;
	clear: both;
	visibility: hidden;
}

#main {
	min-height: 750px;
	padding: 20px 0;
}

#main {
	padding-top: 0px !important;
}

body {
	background: #fff;
	color: #5e5e5e;
	font: 14px/2em Microsoft YaHei, SimSun, Arial;
}

html,body {
	font: 14px/1.5 "PingFang SC", Helvetica, "Helvetica Neue", "微软雅黑",
		Tahoma, Arial, sans-serif;
	color: #14191e;
}

body {
	overflow-y: scroll;
}

body {
	min-width: 1200px;
	background-color: #edeff0;
}

body {
	background: #edeff0;
}

body {
	background-color: #fff;
}

.l {
	float: left;
}

.l {
	float: left;
}

.r {
	float: right;
}

.r {
	float: right;
}

.course-tool-bar .tool-right {
	color: #787d82;
}

.course-tool-bar .tool-item {
	display: inline-block;
	line-height: 40px;
	margin: 0 8px;
	vertical-align: middle;
}

.course-tool-bar .total-num {
	display: none;
	color: #b4b9be;
}

a {
	outline: none;
}

a,input,button {
	outline: none;
}

:link,:visited,ins {
	text-decoration: none;
}

.hide-text {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}

a:link,a:visited {
	color: #5e5e5e;
}

a:link,a:visited {
	color: #14191e;
}

.course-tool-bar .pager-action {
	display: inline-block;
	vertical-align: middle;
	margin-left: 5px;
	width: 18px;
	height: 18px;
	border-color: #c8cdd2;
	border: 1px solid #c8cdd2;
	background-image: url("/static/img/course/v2/pager_sprite.png");
	background-repeat: no-repeat;
}

.course-tool-bar .pager-prev {
	background-position: 6px 4px;
}

.course-tool-bar .pager-action.disabled {
	border-color: #c8cdd2;
	opacity: 0.6;
	filter: alpha(opacity = 60);
	cursor: default;
}

.course-tool-bar .pager-next {
	background-position: 6px -14px;
}

.course-tool-bar .pager-cur {
	color: #f01400;
}

.course-tool-bar .tool-right b {
	font-weight: normal;
}

address,caption,cite,code,dfn,em,strong,th,var,optgroup {
	font-style: normal;
	font-weight: 400;
}

.course-tool-bar .tool-left a {
	margin: 0 20px;
	line-height: 40px;
	color: #787d82;
}

.course-tool-bar .tool-left a.active {
	color: #14191e;
}

.course-nav-row .hd {
	width: 56px;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	color: #787d82;
	text-align: right;
}

.course-nav-row .bd {
	margin-left: 70px;
}

ol,ul {
	list-style: none;
}

.course-nav-item {
	display: inline-block;
	*display: inline:;
	*zoom: 1:;
	margin: 0 13px;
}

.course-nav-item a {
	display: block;
	height: 20px;
	line-height: 20px;
	margin-bottom: 10px;
	padding: 0 6px;
	font-size: 12px;
}

.course-nav-item.on a {
	background: #f01400;
	color: #fff;
}

h2 {
	font-size: 20px;
}

.program-category h2 {
	line-height: 60px;
	height: 60px;
	color: #010101;
	font-size: 16px;
	font-weight: 700;
	border-bottom: 1px solid #d0d6d9;
	margin-left: 10px;
}

.course-list {
	padding-left: 0px;
	padding-right: 0px;
}

.salary-raise {
	padding-top: 18px;
}

ol,ul {
	list-style: none;
}

.course-list ul {
	margin: 0 -20px 0 -60px;
}

.course-list li {
	background: #fff;
	background: #f7faf9\0/;
	*background: #f7faf9:;
	border-bottom: 2px solid #f7faf9\0/;
	*border-bottom: 2px solid #f7faf9:;
	border-radius: 0 0 1px 1px;
	float: left;
	margin: 0 0 8px 40px;
	height: 250px;
	width: 240px;
	padding: 20px 20px 0;
	position: relative;
	-moz-transition: box-shadow 0.3s;
	-webkit-transition: box-shadow 0.3s;
	-o-transition: box-shadow 0.3s;
	transition: box-shadow 0.3s;
}

.program-medias li {
	height: 310px;
}

.salary-raise li {
	height: 310px;
}

a {
	outline: none;
}

a,input,button {
	outline: none;
}

:link,:visited,ins {
	text-decoration: none;
}

a:link,a:visited {
	color: #5e5e5e;
}

a:link,a:visited {
	color: #14191e;
}

.course-list li .course-list-img {
	width: 240px;
	height: 135px;
	overflow: hidden;
	position: relative;
	*display: inline:;
	*zoom: 1:;
}

.program-medias li .course-list-img {
	height: 180px;
}

h1,h2,h3,h4,h5,h6 {
	font-size: 100%;
	font-weight: 400;
	font-family: "Microsoft YaHei";
}

h5 {
	font-size: 14px;
	line-height: 28px;
}

.course-list li h5 {
	margin: 18px 0 0;
	height: 18px;
	line-height: 18px;
	color: #14191e;
	text-align: left;
	font-weight: bold;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.course-list .tags {
	margin: 12px 0 14px;
	height: 20px;
	overflow: hidden;
}

.course-list li .tips {
	font-size: 12px;
	color: #b4bbbf;
}

.course-list li .tips {
	margin: 0;
	padding: 0;
}

.l {
	float: left;
}

.ml20 {
	margin-left: 20px !important;
}

.l {
	float: left;
}

.ml20 {
	margin-left: 20px;
}

.course-list .tips span {
	color: #787d82;
}

.course-list .tags span {
	display: inline-block;
	margin-right: 4px;
	padding: 0 8px;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	color: #787d82;
	background-color: #edf1f2;
	vertical-align: middle;
}

fieldset,img {
	border: 0;
}

.course-list li .course-list-img img {
	display: block;
	width: 240px;
	transition: 1s;
	-moz-transition: 1s;
	-webkit-transition: 1s;
	-o-transition: 1s;
}

.program-medias li .course-list-img img {
	height: 180px;
}
</style>
</head>
<body id="List_courseId">

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


			<div class="program-wrap clearfix"
				style="margin-left: 5px;margin-top: 15px;">
				<div class="program-main">
					<div class="program-category" id="raises">
						<h2>Web 工程师</h2>

					</div>
					<div>
						<div class="course-nav-row clearfix">
							<span class="hd l">方向：</span>
							<div class="bd">
								<ul>
									<li class="course-nav-item on"><a
										href="/course/program#raises">全部</a></li>
									<li class="course-nav-item "><a
										href="/course/program?c=fe#raises">初级</a></li>
									<li class="course-nav-item "><a
										href="/course/program?c=be#raises">中级</a></li>
									<li class="course-nav-item "><a
										href="/course/program?c=mobile#raises">中高级</a></li>
									<li class="course-nav-item "><a
										href="/course/program?c=fsd#raises">高级</a></li>
								</ul>
							</div>
							<span class="hd l">分类：</span>
							<div class="bd">
								<ul>
									<li class="course-nav-item on"><a
										href="/course/program#raises">视频</a></li>
									<li class="course-nav-item "><a
										href="/course/program?c=fe#raises">文章</a></li>

								</ul>
							</div>
						</div>
						<div class="course-tool-bar clearfix">
							<div class="tool-left l">
								<a class="sort-item active"
									href="/course/program?sort=last#raises">最新</a> <a
									class="sort-item" href="/course/program?sort=pop#raises">最热</a>

							</div>
							<div class="tool-right r">

								<span class="tool-item total-num"> 共<b>36</b>个路径 </span> <span
									class="tool-item tool-pager"> <span class="pager-num">
										<b class="pager-cur">1</b>/<em class="pager-total">2</em> </span> <a
									class="pager-action pager-prev hide-text disabled"
									href="javascript:void(0)">上一页</a> <a
									class="pager-action pager-next hide-text"
									href="/course/program?page=2#raises">下一页</a> </span>
							</div>
						</div>
						<div class="course-list salary-raise program-medias">
							<ul class="clearfix">
								<li class="course-one"><a title="搞定Java SSM框架开发"
									href="/course/programdetail/pid/59" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="搞定Java SSM框架开发"
												src="http://img.mukewang.com/57c7c61a0001f07f02400180.jpg">
										</div>
										<h5>
											<span>搞定Java SSM框架开发</span>
										</h5>
										<div class="tags">
											<span>SpringMVC</span> <span>Spring</span> <span>MyBatis</span>
										</div>
										<div class="tips">
											<span class="l">10门课程</span> <span class="l ml20">4138人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="安卓特效合集豪华套餐"
									href="/course/programdetail/pid/58" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="安卓特效合集豪华套餐"
												src="http://img.mukewang.com/57ada8480001826b02400180.jpg">
										</div>
										<h5>
											<span>安卓特效合集豪华套餐</span>
										</h5>
										<div class="tags">
											<span>Android</span> <span>特效</span>
										</div>
										<div class="tips">
											<span class="l">12门课程</span> <span class="l ml20">1747人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Android必备技能之基础组件"
									href="/course/programdetail/pid/57" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Android必备技能之基础组件"
												src="http://img.mukewang.com/57b156100001903b02400180.jpg">
										</div>
										<h5>
											<span>Android必备技能之基础组件</span>
										</h5>
										<div class="tags">
											<span>Android</span> <span>组件</span>
										</div>
										<div class="tips">
											<span class="l">9门课程</span> <span class="l ml20">1457人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="探索Python世界"
									href="/course/programdetail/pid/56" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="探索Python世界"
												src="http://img.mukewang.com/57a81ff700011fe302400180.jpg">
										</div>
										<h5>
											<span>探索Python世界</span>
										</h5>
										<div class="tags">
											<span>Python_WEB</span> <span>Python爬虫</span>
										</div>
										<div class="tips">
											<span class="l">3门课程</span> <span class="l ml20">2996人学习</span>
										</div> </a></li>
								<li class="course-one"><a title=" 带你玩转Yii框架"
									href="/course/programdetail/pid/55" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt=" 带你玩转Yii框架"
												src="http://img.mukewang.com/579870ea0001c3e602400180.jpg">
										</div>
										<h5>
											<span> 带你玩转Yii框架</span>
										</h5>
										<div class="tags">
											<span>php</span> <span>Yii</span>
										</div>
										<div class="tips">
											<span class="l">5门课程</span> <span class="l ml20">1679人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="快速搞定PHP第三方登录"
									href="/course/programdetail/pid/54" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="快速搞定PHP第三方登录"
												src="http://img.mukewang.com/579195530001bf1f02400180.jpg">
										</div>
										<h5>
											<span>快速搞定PHP第三方登录</span>
										</h5>
										<div class="tags">
											<span>PHP</span> <span>OAUTH</span>
										</div>
										<div class="tips">
											<span class="l">3门课程</span> <span class="l ml20">1240人学习</span>
										</div> </a></li>
								<li class="course-one"><a title=" PHP微信公众平台开发攻略"
									href="/course/programdetail/pid/53" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt=" PHP微信公众平台开发攻略"
												src="http://img.mukewang.com/57908c45000151a102400180.jpg">
										</div>
										<h5>
											<span> PHP微信公众平台开发攻略</span>
										</h5>
										<div class="tags">
											<span>PHP</span> <span>微信公众号</span>
										</div>
										<div class="tips">
											<span class="l">8门课程</span> <span class="l ml20">5122人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="玩嗨Python进阶"
									href="/course/programdetail/pid/52" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="玩嗨Python进阶"
												src="http://img.mukewang.com/5788599e0001867202400180.jpg">
										</div>
										<h5>
											<span>玩嗨Python进阶</span>
										</h5>
										<div class="tags">
											<span>Python</span> <span>求职加薪</span>
										</div>
										<div class="tips">
											<span class="l">3门课程</span> <span class="l ml20">2334人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="搞定python基础"
									href="/course/programdetail/pid/51" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="搞定python基础"
												src="http://img.mukewang.com/577472b50001906d02400180.jpg">
										</div>
										<h5>
											<span>搞定python基础</span>
										</h5>
										<div class="tags">
											<span>Python</span> <span>基础</span> <span>加薪利器</span>
										</div>
										<div class="tips">
											<span class="l">4门课程</span> <span class="l ml20">5417人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Android-微信热门功能合集"
									href="/course/programdetail/pid/50" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Android-微信热门功能合集"
												src="http://img.mukewang.com/57296fa80001d2a302400180.jpg">
										</div>
										<h5>
											<span>Android-微信热门功能合集</span>
										</h5>
										<div class="tags">
											<span>微信功能</span> <span>加薪升职</span>
										</div>
										<div class="tips">
											<span class="l">6门课程</span> <span class="l ml20">3636人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Linux shell运维实战"
									href="/course/programdetail/pid/49" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Linux shell运维实战"
												src="http://img.mukewang.com/570d992800018cd702400180.jpg">
										</div>
										<h5>
											<span>Linux shell运维实战</span>
										</h5>
										<div class="tags">
											<span>Linux</span> <span>shell</span> <span>实战</span>
										</div>
										<div class="tips">
											<span class="l">4门课程</span> <span class="l ml20">5001人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Hibernate开发宝典"
									href="/course/programdetail/pid/48" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Hibernate开发宝典"
												src="http://img.mukewang.com/56dd14680001364a02400180.jpg">
										</div>
										<h5>
											<span>Hibernate开发宝典</span>
										</h5>
										<div class="tags">
											<span>Hibernate开发</span> <span>加薪利器</span> <span>JavaWeb</span>
										</div>
										<div class="tips">
											<span class="l">7门课程</span> <span class="l ml20">4233人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Cocos2d-x游戏开发快速入门"
									href="/course/programdetail/pid/47" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Cocos2d-x游戏开发快速入门"
												src="http://img.mukewang.com/56a8356e0001f20602400180.jpg">
										</div>
										<h5>
											<span>Cocos2d-x游戏开发快速入门</span>
										</h5>
										<div class="tags">
											<span>游戏开发</span> <span>游戏开发攻略</span> <span>游戏开发速成</span>
										</div>
										<div class="tips">
											<span class="l">7门课程</span> <span class="l ml20">4451人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="iOS苹果表开发攻略"
									href="/course/programdetail/pid/46" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="iOS苹果表开发攻略"
												src="http://img.mukewang.com/565cfce00001efed02400180.jpg">
										</div>
										<h5>
											<span>iOS苹果表开发攻略</span>
										</h5>
										<div class="tags">
											<span>AppleWatch开发</span> <span>运动app</span> <span>从0开始学苹果手表开发</span>
										</div>
										<div class="tips">
											<span class="l">10门课程</span> <span class="l ml20">4837人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="小慕感恩计划-实战Hot!!!"
									href="/course/programdetail/pid/44" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="小慕感恩计划-实战Hot!!!"
												src="http://img.mukewang.com/5649793f000109f502400180.jpg">
										</div>
										<h5>
											<span>小慕感恩计划-实战Hot!!!</span>
										</h5>
										<div class="tags">
											<span>Android面试</span> <span>Android热门</span> <span>自定义UI</span>
										</div>
										<div class="tips">
											<span class="l">8门课程</span> <span class="l ml20">5007人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="教你HTML5开发爱心鱼游戏"
									href="/course/programdetail/pid/43" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="教你HTML5开发爱心鱼游戏"
												src="http://img.mukewang.com/562f42aa0001015602400180.jpg">
										</div>
										<h5>
											<span>教你HTML5开发爱心鱼游戏</span>
										</h5>
										<div class="tags">
											<span>HTML5</span> <span>游戏开发</span> <span>Canvas</span>
										</div>
										<div class="tips">
											<span class="l">4门课程</span> <span class="l ml20">12927人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="C++远征攻略"
									href="/course/programdetail/pid/42" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="C++远征攻略"
												src="http://img.mukewang.com/55cc72150001f41002400180.jpg">
										</div>
										<h5>
											<span>C++远征攻略</span>
										</h5>
										<div class="tags">
											<span>C++基础</span> <span>面向对象</span>
										</div>
										<div class="tips">
											<span class="l">11门课程</span> <span class="l ml20">11103人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Oracle数据库开发必备利器"
									href="/course/programdetail/pid/40" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Oracle数据库开发必备利器"
												src="http://img.mukewang.com/55a6338f00019d6002400180.jpg">
										</div>
										<h5>
											<span>Oracle数据库开发必备利器</span>
										</h5>
										<div class="tags">
											<span>Oracle</span> <span>数据库开发</span>
										</div>
										<div class="tips">
											<span class="l">6门课程</span> <span class="l ml20">7922人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="Swift加薪利器-iOS动画特辑"
									href="/course/programdetail/pid/39" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="Swift加薪利器-iOS动画特辑"
												src="http://img.mukewang.com/559628bd00012a1502400180.jpg">
										</div>
										<h5>
											<span>Swift加薪利器-iOS动画特辑</span>
										</h5>
										<div class="tags">
											<span>加薪</span> <span>动画特辑</span> <span>swift</span>
										</div>
										<div class="tips">
											<span class="l">7门课程</span> <span class="l ml20">2875人学习</span>
										</div> </a></li>
								<li class="course-one"><a title="C语言学习攻略"
									href="/course/programdetail/pid/37" target="_blank">
										<div class="course-list-img">
											<img width="240" height="180" alt="C语言学习攻略"
												src="http://img.mukewang.com/557133ad000112c302400180.jpg">
										</div>
										<h5>
											<span>C语言学习攻略</span>
										</h5>
										<div class="tags">
											<span>编程基础</span> <span>零基础</span> <span>C语言基础</span>
										</div>
										<div class="tips">
											<span class="l">4门课程</span> <span class="l ml20">24072人学习</span>
										</div> </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 			<div class="main-grids news-main-grids">
			
				<div class="recommended-info">
				
				
				
				
				
				
				</div>
			</div> -->
		</div>

		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->

	</div>


	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a>
			</li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a>
			</li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a>
			</li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>