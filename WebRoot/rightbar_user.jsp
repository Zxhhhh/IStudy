<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String user_id = request.getParameter("userId");
   VO4UserShowRtn user = new UserService().queryById(user_id);
   System.out.println(user_id);
   List<VO4UserShowRtn> usrList = new UserService().followQuery(user_id);
 %>
 <style>
 	.title{
 		float:left;
 		margin-bottom:10px;
 		font-size:14px;
 		color:#969696
 	}
 	
 	.description{
 		float:left;
		margin-bottom:10px;
		line-height:20px;
		padding:0 0 16px;
		text-align: left;
		border-bottom:1px solid #f0f0f0;
		font-size:15px
 	}
 	
 	.user-dynamic{
 		padding-bottom:6px;
 	}
 	
 	.list{
 		margin-bottom:16px;
 		list-style:none;
 		border-bottom:1px solid #f0f0f0;
 		clear:both;
 	}
 	
 	.list a{
 		color:#333;
 		text-decoration: none;
 		line-height:20px;
 		display:inline-block;
 		text-align: left;
 		
 	}
 	
 	.list li{
 		box-sizing:border-box;
 		margin-bottom:10px;
 	}
 	
 	a:hover{
 		color:#23527c;
 	}
 	
 	.user-dynamic span{
 		vertical-align:middle;
 		font-size:15px;
 	}
 	
 	.up{background-color:#eee} 
	.out{background-color:#FFFFFF}
 	
 
 </style>
 
				<div class="col-md-2 show-grid-right" style="float:right;margin-right:20%;background-color: white;">
					
					<div class="title" >个人介绍</div>
					
					<div class="description">
						<%=user.getUser_summary() %>
					</div>
					
					<br>
					
					<div class="title" >作品一览</div>
					<ul class="user-dynamic list">
						<li >
							<a href="#">						
								<i class="glyphicon glyphicon-th-large"></i>
								<span>他的视频</span>
							</a>
						</li>
						<li >
							<a href="#">						
								<i class="glyphicon glyphicon-book"></i>
								<span>他的文章</span>
							</a>
						</li>
						<li >
							<a href="#">
								<i class="glyphicon glyphicon-cloud"></i>
								<span>他的收藏</span>
							</a>
					</ul>
					
					<div class="title">关注</div>
					
					<ul class="list">
								<%for(VO4UserShowRtn usr:usrList){ %>
								<li  onclick="jump()" id="li" onmouseover="this.className='up'" onMouseOut="this.className='out'" style="border-radius:10px">
									<div style="width:100%;height:60px;">
										<div class="col-md-4" style="margin:5px;padding:10px">
											<img src="userLogo/<%=usr.getUser_pic() %>" style="float:right"
												class="img-circle" height="40" width="40">
										</div>
										<div style="padding-top:13px">
											<small><strong><%=usr.getUser_name() %></strong></small> <small
												style="display:block;margin-top:15px">状态:<span
												style="color:green">在线</span></small>
										</div>
									</div>
								</li>
								
								<script>
								function jump(){
								 window.location.href="about.jsp?user_id=<%=usr.getUser_id()%>"
								}
								</script>
								<%} %>
								
								<br>
								<!-- 关注区 -->
								
								<li onmouseover="this.className='up'" onMouseOut="this.className='out'" style="border-radius:10px">
									<div style="width:100%;height:60px;">
										<div class="col-md-4" style="margin:5px;padding:10px">
										<% %>
											<img src="images/user_logo.jpg" style="float:right"
												class="img-circle" height="40" width="40">
										</div>
										<div  style="margin-top:10px">
											<small><strong>好友1</strong></small> <small
												style="display:block;margin-top:15px">状态:<span
												style="color:red">离线</span></small>
										</div>
									</div>
								</li>
					</ul>
				</div>