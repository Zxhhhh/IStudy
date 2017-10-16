<%@page import="com.why.service.Study_videoService"%>
<%@page import="com.why.vo.VO4Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.why.service.Study_articleService"%>
<%@page import="com.why.vo.VO4Article"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML>
<html>
<head>
<title>欢迎来到爱学网</title>
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

<!-- 通知框 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="themes/original.css" rel="stylesheet">
<script src='js/humane.js'></script>

<script src="js/jquery-1.11.1.min.js"></script>
<!-- //fonts -->
<style type="text/css">
img.type{

opacity:1.0;
filter:alpha(opacity=100); /* 针对 IE8 以及更早的版本 */

}

img.type:hover
{
opacity:0.3;
filter:alpha(opacity=30); /* 针对 IE8 以及更早的版本 */
}
</style>
</head>
<body>



	<%
		String responseInfo = (String) session.getAttribute("responseInfo");
		if (responseInfo != null) {
			session.removeAttribute("responseInfo");
	%>
	<script type="text/javascript">
	  humane.baseCls = 'humane-original';
	  eval(humane.log("<%=responseInfo%>"));
	</script>
	<%
		} else if (request.getParameter("need2Login") != null) {
	%>

	<script type="text/javascript">
		humane.baseCls = 'humane-original';
		eval(humane.log("请先登录再操作"));
	</script>

	<%
		}
	%>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 		<div class="developers" style="/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#f5f6f6+7,f5f6f6+7,dbdce2+20,dbdce2+36,b8bac6+48,dddfe3+61,f5f6f6+72 */
background: rgb(245,246,246); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(245,246,246,1) 7%, rgba(245,246,246,1) 7%, rgba(219,220,226,1) 20%, rgba(219,220,226,1) 36%, rgba(184,186,198,1) 48%, rgba(221,223,227,1) 61%, rgba(245,246,246,1) 72%); /* FF3.6-15 */
background: -webkit-linear-gradient(top,  rgba(245,246,246,1) 7%,rgba(245,246,246,1) 7%,rgba(219,220,226,1) 20%,rgba(219,220,226,1) 36%,rgba(184,186,198,1) 48%,rgba(221,223,227,1) 61%,rgba(245,246,246,1) 72%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom,  rgba(245,246,246,1) 7%,rgba(245,246,246,1) 7%,rgba(219,220,226,1) 20%,rgba(219,220,226,1) 36%,rgba(184,186,198,1) 48%,rgba(221,223,227,1) 61%,rgba(245,246,246,1) 72%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f5f6f6', endColorstr='#f5f6f6',GradientType=0 );"> -->

	<div class="hidden-xs"
		style="width:100%;height:500px;background-image:url('images/istudybanner.jpg')"></div>
	<!-- 电脑屏幕看到的主页图片 -->

	<img class="visible-xs-block" src="images/istudybanner_small.jpg"
		style="width:330px;height:150px">
	<!-- 手机屏幕看到的主页图片 -->

	<div class="creators-grids">
		<!-- container -->
		<div class="container">

			<div class="creators-bottom-grids-info">

				<!-- 					<div style="width:100%;height:40px;background-color:lightgray;border-radius:25px;" >
					<center><h2><strong style="color:#ffffff;">进入爱学的世界</strong></h2></center>
					</div> -->
			</div>
			<div style="width:100%;height:60px"></div>

			<!-- 爱学直播 -->
	
				<a href="live.jsp"><img class="type" src="images/index_live.png"
					style="width:auto;height:250px" /> </a>
		

			<!-- 爱学视频-->

				<a href="servlet/VideoServlet?flag=page"><img class="type"
					src="images/index_video.png" style="width:auto;height:250px" /> </a>

			<!-- 爱学之路 -->

				<a href="study.jsp"><img class="type" src="images/index_road.png"
					style="width:auto;height:250px" /> </a>
		
			<div class="clearfix"></div>
		</div>
		<!-- //container -->
	</div>






	<div style="height: 100px;width: 100%;"></div>
	<div style="text-align: center;">

		
		
		
		

		
		<div style="height: 20px;width: 100%;"></div>
		<div 
				style=" height: auto;
    width: 1050px;
    overflow: hidden;
    margin: 0 auto 50px auto;
    padding: 0 8px 0 8px;">
    
    		<div >
		<h3>每日推荐</h3>
				<div style="    
	border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
    margin: 0;" class="right-more">
    <a  style=" text-decoration:none;   color: #848484;
    margin: 5px 0 0 0;
    height: 30px;
    font-size: 15px;
    float: right;
    line-height: 30px;    cursor: auto;" href="http://www.mooc.cn/course" target="_blank">更多 <span>&gt;</span></a></div>
		</div>
    
			<div style="    float: left;
    overflow: hidden;
    width: 1080px;">
    
    
    <% 
    List<VO4Article> list  = new ArrayList<VO4Article>();
						String user_account = (String)session.getAttribute("user_id");
						if(user_account==null){
						list = new Study_articleService().findTopFiveArticle();
						}else{
						int user_id = Integer.parseInt(user_account);
						list = new Study_articleService().article_recommend_five(user_id);
						}
						for(VO4Article vo : list ){

%>


				<div style="overflow: hidden;
    text-overflow: clip;
    width: 192px;
    float: left;
    margin: 0 22px 15px 0;">
					<a style="text-decoration: none;" href="#"><img
						src="<%=vo.getArticle_pic()%>" alt="" style="height:160px;width: auto;" />
						<h4><%=vo.getArticle_name()%></h4> </a>

				</div>
				
<%
}
 %>				
								
	    <% 
    List<VO4Video> list2  = new ArrayList<VO4Video>();
						if(user_account==null){
						list2 = new Study_videoService().findFiveVideoByCount();
						}else{
						int user_id = Integer.parseInt(user_account);
						list2 = new Study_videoService().video_recommend_five(user_id);
						}
						for(VO4Video vo : list2 ){

%>


				<div style="overflow: hidden;
    text-overflow: clip;
    width: 192px;
    float: left;
    margin: 0 22px 15px 0;">
					<a style="text-decoration: none;" href="#"><img
						src="<%=vo.getVideo_pic()%>" alt="" style="height:160px;width: auto;" />
						<h4><%=vo.getVideo_name()%></h4> </a>

				</div>
				
<%
}
 %>		




			</div>










	</div>
</div>

	


	

<%-- 
		<!-- 底部栏 -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- 底部栏 --> --%>

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