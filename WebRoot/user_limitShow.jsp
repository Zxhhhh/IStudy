<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@page import="com.why.service.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


String user_id = request.getParameter("user_id");

List<VO4UserShowRtn> userFollowList = new UserService().followQuery(user_id);


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_limitShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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

<style type="text/css">

	
	a{
		text-decoration: none;
		color:#333;
		line-height: 1.4285;
	}
	
	.title{
 		margin-bottom:10px;
 		font-size:14px;
 		color:#969696;
 		display: block;
 	}
	
	.recommend-collection{
		
		display:block;
		margin-bottom:20px;
		line-height:1.4285;
		color:#333;
		border-radius:10px;
	}
	
	.collection{
	
		display:inline-block;
		margin:0 18px 18px 0;
		min-height: 32px;
		background-color: #f7f7f7;
		border:1px solid #dcdcdc;
		border-radius:4px;
		vertical-align: top;
		overflow:hidden;
		opacity:1.0;
	}
	
	.collection :hover{
	
		opacity:0.3;
	}
	
	.recommend-collection .collection img{
	
		width:32px;
		height:32px;
		vertical-align: middle;
		border:0;
	
	}
	
	.name{
		
		margin-top:5px;
		display:inline-block;
		padding:0 11px 0 6px;
		font-size: 14px;
		line-height: 1.4285;
	
	}
	
	.more-hot-collection{
	
		display: inline-block;
		margin-top: 7px;
		font-size:14px;
		color:#787878;
		text-decoration: none;
	
	}
	
	
</style>

  </head>
  
  <body>
  	
  	<div class="title" >TA的关注用户</div>
  	<br><br>
  	<div class="recommend-collection">
  		
  		<a class="collection" href="#">
  			<img src="images/fb.png"/>
  			<div class="name">脸书</div>
  		</a>
  		
  		<a class="collection" href="#">
  			<img src="images/google.png"/>
  			<div class="name">谷歌</div>
  		</a>
  		
  		<a class="collection" href="#">
  			<img src="images/linkedin.png"/>
  			<div class="name">INS</div>
  		</a>
  		
  		<a class="collection" href="#">
  			<img src="images/twitter.png"/>
  			<div class="name">推特</div>
  		</a>
  		
  		<%for(VO4UserShowRtn usr:userFollowList){ %>
  			<a class="collection" href="#">
  				<img src="userLogo/<%=usr.getUser_pic()%>"/>
  			<div class="name"><%=usr.getUser_name() %></div>
  		</a>
  		
  		
  		
  		<%} %>
  		
  		
  		
  		<a class="more-hot-collection">查看全部 ></a>
  		
  	</div>
  
  	
  
  </body>
</html>
