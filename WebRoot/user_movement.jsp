<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <% String user_id = request.getParameter("userId");
   VO4UserShowRtn user = new UserService().queryById(user_id);
   System.out.println(user_id);
   List<VO4UserShowRtn> usrList = new UserService().followQuery(user_id);
 %> --%>
 <style>
 
 	body{
 	
 		font-size: 14px;
		line-height: 1.4285;
		color:#333;
 	
 	}
 	
 	span{
 	
 		display: inline-block;
 		padding-left: 3px;
 		color:#969696;
 	}
 	
 	a{
 	
 		color:#333;
 		text-decoration: none;
 		background-color: transparent;
 	
 	}
 	

	.list-container{
	
		font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
		font-size: 14px;
		line-height: 1.4285;
		color:#333;
		box-sizing:border-box;
	
	}
	
	.note-list{
	
		margin-bottom: 20px;
		border-bottom: 1px solid #f0f0f0;
		list-style:none;
		display: inherit;
		position: relative;
		
	}
	
	.note-list li{
		
		display:inline-block;
		padding:0 2px 17px 0;
		margin:10px 0 17px;
		line-height: 20px;
		width: 100%;
		border-bottom: 1px solid #f0f0f0;
		box-sizing:border-box;
		word-wrap:break-word;
		list-style:none;
		position: relative;
		
	}
	
	.have-img{
	
		min-height: 112px;
		position: absolute;
	
	}
	
	.wrap-img{
	
		margin-top:-58px;
		bottom:40px;
		width:125px;
		height:100px;
		position: absolute;
		top:50%;
		/*  left:0;*/
	
	}
	
	.content{
	
		padding-right: 135px;
		box-sizing:border-box;
		width: 75%;
	
	}
	
	.author{
	
		margin-bottom: 14px;
		font-size: 13px;
	}
	
	.avatar{
	
		display:inline-block;
		vertical-align: middle;
		margin:0 5px 0 0;
		width: 32px;
		height:32px;
		cursor: pointer;
		text-decoration: none;
	
	}
	
	.avatar img{
	
		width:100%;
		height:100%;
		border:1px solid #ddd;
		border-radius:50%;
		vertical-align: middle;
	}
	
	.name{
	
		display:inline-block;
		vertical-align: middle;
		font-size: 13px;
	
	}
	
	.title{
	
		margin:-7px 0 4px;
		display: block;
		font-size: 18px;
		font-weight: 700;
		line-height: 24px;
	
	}
	
	.abstract{
	
		margin:0 0 8px;
		font-size: 13px;
		line-height: 24px;
		box-sizing:border-box;
		text-align:justify;
		text-justify:newspaper
	
	}
	
	
	.meta{
	
		padding-right:0px !important;
		font-size: 12px;
		font-weight: 400;
		line-height: 20px;
		box-sizing:border-box;
		margin-right:10px;
		color:#b4b4b4;
		margin-top:5px;
	}
	
	.meta a{
	
		margin-right:10px;
		color:#b4b4b4;
	
	}
	
	.origin{
	
		display: inline;
		margin-bottom: 5px;
		font-size: 12px;
		color:#969696;
		box-sizing:border-box;
	}
	
	.contentTitle{
	
 		margin-bottom:10px;
 		font-size:14px;
 		color:black;
 		font-style: inherit;
 	}

 	
 
 </style>
 
	<div class="list-container">
		
		<ul class="note-list">
		
			<li class="have-img">
				<div class="content">
					<div class="author">
						<a class="avatar" href="#">
							<img class="contentimg" src="images/fb.png" />						
						</a>
						<div class="name">
							<a class="blue-link" href="#">Zxhhhh</a>
							<span>喜欢了文章 ~ 4月1日 15:30</span>
						</div>
					</div>
					<a class="title" href="#" >零基础学手绘丨暖心萌宝12生肖系列之子鼠</a><br><br>
					<p class="abstract" style="line-height: 24px;width:90%">
						小伙伴们，我准备下周开课啦，现在正在准备中，敬请关注哦。 今天开始更一套12生肖暖心萌宝励志系列，能hold住的小伙伴可以试试哦。 今天是子鼠，会画的可以跟我画一样的，不会的...
						<a href="#"><i class="glyphicon glyphicon-hand-right"></i></a>
					</p>
					<a class="wrap-img" href="#" style="right:28%">
						<img style="width:180px;height:120px;" src="images/c3.jpg" />
					</a>
					<div class="meta">
						<div class="origin">
							<a href="#" style="color:blue">Zxhhhh</a>
						</div>
						<a href="#"><i class="glyphicon glyphicon-leaf"></i>1359</a>
						<a href="#"><i class="glyphicon glyphicon-user"></i>11</a>
						<a href="#"><i class="glyphicon glyphicon-comment"></i> 0</a>
					</div>
				</div>
			</li>
			
			<li class="have-img">
				<div class="content" style="width:75%">
					<div class="author">
						<a class="avatar" href="#">
							<img class="contentimg" src="images/fb.png" />						
						</a>
						<div class="name">
							<a class="blue-link" href="#">Zxhhhh</a>
							<span>发表了评论 ~ 4月4日 11:00</span>
						</div>
					</div>
					<!-- <a class="title" href="#" >零基础学手绘丨暖心萌宝12生肖系列之子鼠</a><br><br> -->
					
					<p class="abstract" style="color:black;width:85%"><span style="color:black">Zxhhhh说：</span> <a href="#" style="color:blue;">@自来熟先生</a>，这不厚道啊...</p>
					
					<p class="contentTitle">原文:</p>
					<p class="abstract" style="width:95%">
						旧时，读书人很体面。进京考试，讲究点的还要有书童相伴，一路上侍候主人生活起居。﻿ 所以说万般皆下品，唯有读书高。﻿ 很多人把读书人与孔乙己的形象联系在一起，那是有点扯淡。因...
						<a href="#"><i class="glyphicon glyphicon-hand-right"></i></a>
					</p>
					
					
					<div class="meta">
						<div class="origin">
							<a href="#" style="color:blue">Zxhhhh</a>
						</div>
						<a href="#"><i class="glyphicon glyphicon-leaf"></i>1359</a>
						<a href="#"><i class="glyphicon glyphicon-user"></i>11</a>
						<a href="#"><i class="glyphicon glyphicon-comment"></i> 0</a>
					</div>
				</div>
			</li>
			
			<li class="have-img">
				<div class="content">
					<div class="author">
						<a class="avatar" href="#">
							<img class="contentimg" src="images/fb.png" />						
						</a>
						<div class="name">
							<a class="blue-link" href="#">Zxhhhh</a>
							<span>发表了文章 ~ 3月26日 12:00</span>
						</div>
					</div>
					<a class="title" href="#" >功夫熊猫3 -|- 影评</a><br><br>
					<p class="abstract" style="line-height: 24px;width:90%">
						小伙伴们，我准备下周开课啦，现在正在准备中，敬请关注哦。 今天开始更一套12生肖暖心萌宝励志系列，能hold住的小伙伴可以试试哦。 今天是子鼠，会画的可以跟我画一样的，不会的...
						<a href="#"><i class="glyphicon glyphicon-hand-right"></i></a>
					</p>
					<a class="wrap-img" href="#" style="right:28%">
						<img style="width:180px;height:120px;" src="images/c2.jpg" />
					</a>
					<div class="meta">
						<div class="origin">
							<a href="#" style="color:blue">Zxhhhh</a>
						</div>
						<a href="#"><i class="glyphicon glyphicon-leaf"></i>200</a>
						<a href="#"><i class="glyphicon glyphicon-user"></i>5</a>
						<a href="#" ><i class="glyphicon glyphicon-comment"></i> 7</a>
					</div>
				</div>
			</li>
			
		</ul>
	
	</div>
 
 