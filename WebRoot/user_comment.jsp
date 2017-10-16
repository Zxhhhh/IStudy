<%@page import="java.util.List"%>
<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
	response.setContentType("text/html;charset=UTF-8");
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
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<link href="css/dashboard.css" rel="stylesheet">
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />

<!-- 通知框 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="themes/original.css" rel="stylesheet">
<script src='js/humane.js'></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>

<style type="text/css">
.avatar {
	display: inline-block;
	vertical-align: middle;
	margin: 0 5px 0 0;
	width: 32px;
	height: 32px;
	cursor: pointer;
	text-decoration: none;
}

.avatar img {
	width: 100%;
	height: 100%;
	border: 1px solid #ddd;
	border-radius: 50%;
	vertical-align: middle;
}

.comment-list {
	color: #333;
	font-size: 17px;
}

.new-comment {
	position: relative;
	margin-left: 20px;
	margin: 0 0 20px;
	line-height: 1.4285;
}

.comment-list textarea {
	padding: 10px 15px;
	width: 100%;
	height: 80px;
	font-size: 13px;
	border: 1px solid #dcdcdc; borderr-radius; 4 px;
	background-color: hsla(0, 0%, 71%, .1);
	display: inline-block;
	vertical-align: top;
	outline-style: none;
	color: #a0a0a0;
}

.normal-comment-list {
	margin-top: 30px;
	color: #333;
	line-height: 1.4285;
}

.top {
	padding-bottom: 20px;
	font-size: 17px;
	font-weight: 700;
	border-bottom: 1px solid #f0f0f0;
}

.top span {
	vertical-align: middle;
}

.author-only {
	margin-left: 10px;
	padding: 4px 8px;
	font-size: 12px;
	color: #969696;
	border: 1px solid #e1e1e1;
	border-radius: 3px;
}

.close-btn {
	margin-left: 10px;
	font-size: 12px;
	color: #969696;
	cursor: pointer;
}

.pull-right {
	float: right !important;
	font-size: 17px;
	font-weight: 700;
}

.top a {
	margin-leeft: 10px;
	font-size: 12px;
	font-weight: 400;
	color: #969696;
	text-decoration: none;
	background-color: transparent;
	display: inline-block;
}

.comment {
	padding: 20px 0 30px;
	border-bottom: 1px solid #f0f0f0;
	box-sizing: border-box;
}

.author {
	margin-bottom: 15px;
}

.info {
	display: inline-block;
	vertical-align: middle;
}

.name {
	font-size: 15px;
	color: #333;
	margin-bottom:10px;
}

.meta {
	font-size: 12px;
	color: #969696;
}

.meta span {
	margin-left: 6px;
}

.comment p {
	font-size: 16px;
	margin: 10px 0;
	line-height: 1.5;
	color:#333;
}

.tool-group a span {
	vertical-align: middle;
	font-size: 14px;
	color: #969696;
	padding-left:0px;
}

.tool-group a i {
	margin-right:3px;
	font-size: 18px;
	vertical-align: middle;
}


.sub-comment-list{

	margin-top: 20px;
	padding:5px 0 5px 20px;
	border-left: 2px solid #d9d9d9;
}

.hide{

	display: none !important;

}




</style>


</head>
<body>
	<div class="comment-list" id="comment-list">
		<div>
			<div class="normal-comment-list">
				<div>
					<div>
						<div class="top">
							<span>5条留言</span> <a class="author-only">只看本人</a> <a
								class="close-btn" style="display:none;">关闭评论</a>
							<div class="pull-right">
								<a class="active">按喜欢排序</a> <a class="">按时间排序</a>
							</div>
						</div>
						
						<!-- 留言1 -->
						<div class="comment">
							<div>
								<div class="author">
									<a class="avatar" href="#"> <img src="images/google.png" />
									</a>
									<div class="info">
										<a class="name" href="#">BigZxh</a>
									</div>
									<div class="meta">
										<span>2楼 - 2017.04.01 11:35</span>
									</div>
								</div>
								<div class="comment-wrap">
									<p>我看你不寂寞的，热闹得很</p>
									<div class="tool-group">
										<a style="margin-right:15px"> 
											<i class="glyphicon glyphicon-thumbs-up" style="margin-right:0" ></i> 
											<span>1人赞</span>
										</a> 
										<a> 
											<i class="glyphicon glyphicon-comment"></i> 
											<span>回复</span>
										</a>
									</div>
								</div>
							</div>
							<div class="sub-comment-list hide"></div>
						</div>
						
						<!-- 留言2 -->
						<div class="comment">
							<div>
								<div class="author">
									<a class="avatar" href="#"> <img src="images/linkedin.png" />
									</a>
									<div class="info">
										<a class="name" href="#">Way</a>
									</div>
									<div class="meta">
										<span>3楼 - 2017.04.03 09:00</span>
									</div>
								</div>
								<div class="comment-wrap">
									<p>最近你很少上哦</p>
									<div class="tool-group">
										<a style="margin-right:15px"> 
											<i class="glyphicon glyphicon-thumbs-up" style="margin-right:0" ></i> 
											<span>4人赞</span>
										</a> 
										<a> 
											<i class="glyphicon glyphicon-comment"></i> 
											<span>回复</span>
										</a>
									</div>
								</div>
							</div>
							<div class="sub-comment-list hide"></div>
						</div>
						
						<!-- 留言3 -->
						<div class="comment">
							<div>
								<div class="author">
									<a class="avatar" href="#"> <img src="images/pinterest.png" />
									</a>
									<div class="info">
										<a class="name" href="#">LHY</a>
									</div>
									<div class="meta">
										<span>4楼 - 2017.04.03 17:47</span>
									</div>
								</div>
								<div class="comment-wrap">
									<p>进来逛一下</p>
									<div class="tool-group">
										<a style="margin-right:15px"> 
											<i class="glyphicon glyphicon-thumbs-up" style="margin-right:0" ></i> 
											<span>5人赞</span>
										</a> 
										<a> 
											<i class="glyphicon glyphicon-comment"></i> 
											<span>回复</span>
										</a>
									</div>
								</div>
							</div>
							<div class="sub-comment-list hide"></div>
						</div>
						
						<!-- 留言4 -->
						<div class="comment">
							<div>
								<div class="author">
									<a class="avatar" href="#"> <img src="images/twitter.png" />
									</a>
									<div class="info">
										<a class="name" href="#">Dtsola</a>
									</div>
									<div class="meta">
										<span>5楼 - 2017.04.04 08:40</span>
									</div>
								</div>
								<div class="comment-wrap">
									<p>YY上线 | |</p>
									<div class="tool-group">
										<a style="margin-right:15px"> 
											<i class="glyphicon glyphicon-thumbs-up" style="margin-right:0" ></i> 
											<span>0人赞</span>
										</a> 
										<a> 
											<i class="glyphicon glyphicon-comment"></i> 
											<span>回复</span>
										</a>
									</div>
								</div>
							</div>
							<div class="sub-comment-list hide"></div>
						</div>
					</div>
				</div>
			</div>

		</div>


	</div>




</body>
</html>