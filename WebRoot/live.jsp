<%@page import="com.why.service.LiveTypeService"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.why.vo.VO4LiveShowRtn" %>
<%@ page import="java.util.*" %>
<%@ page import="com.why.service.LiveService" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>爱学直播</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<link rel="stylesheet" href="css/bellows.css">
<link rel="stylesheet" href="css/bellows-theme.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/list.css">
<link rel="stylesheet" href="css/lrtk.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/velocity.min.js"></script>
<script src="js/bellows.min.js"></script>

  </head>
  
  <body>
   <div >
   <div class="row clearfix">
		<div class="col-md-12 column">
		<jsp:include page="navbar.jsp"></jsp:include>
		</div>
	</div>
	<div class="row clearfix">
	
		<div class="col-md-2 column" style="padding: 0px;">
		
		<jsp:include page="sidebar.jsp"></jsp:include>
		
		</div>
		<div class="col-md-10">
		<div class="recommended" style="padding-top:5%;margin-top: 3%;margin-left: 1%;">
			
						<div class="recommended-grids" style="width: 100%;margin-top: 10px;">
							<jsp:include page="liveheader.jsp">
							
							<jsp:param value="all" name="page"/>
							
							</jsp:include>
							<div class="recommended-info">
							
								<div class="clearfix"> </div>
							</div>
							
							<ul id="later-play-list" class="video-list clearfix" style="padding-left: 5px;list-style:none;">
                      <%  ArrayList<VO4LiveShowRtn> vo4LiveShowRtnsByVisitor = new ArrayList<VO4LiveShowRtn>();
								LiveService liveService2 = new LiveService();
								vo4LiveShowRtnsByVisitor = liveService2.queryByVisitor();
								for(int i =0;i<vo4LiveShowRtnsByVisitor.size();i++)
								{
								%>
                      <li class="video-list-item video-no-tag ">
                  <a href="live_single.jsp?id=<%=vo4LiveShowRtnsByVisitor.get(i).getLive_id() %>" class="video-list-item-wrap" >
                      <div class="video-cover">
                      <img class="video-img video-img-lazy" data-original="<%=vo4LiveShowRtnsByVisitor.get(i).getLive_pic() %>" src="<%=vo4LiveShowRtnsByVisitor.get(i).getLive_pic() %>" style="display: block;">
                      <div class="video-overlay"></div>
                      <div class="video-play"></div>
                         </div>
                    <div class="video-title" ><%=vo4LiveShowRtnsByVisitor.get(i).getLive_name()%></div>
                    <div class="video-info">
                      <span class="video-nickname"><%=vo4LiveShowRtnsByVisitor.get(i).getLive_author() %></span>
                      <span class="video-number"><%=vo4LiveShowRtnsByVisitor.get(i).getLive_visitor() %></span>
                                              <span class="video-cate">主播不在</span>
                                          </div>
                    <div class="video-progress-bar"></div>
                  </a>
                </li>
               <%} %>
                
                        </ul>
							
							<div class="clearfix"> </div>
						</div>
					</div>
		
		</div>
<!--  		
<div class="col-md-4 column" style="padding: 5%;">
		<div style="border-radius:4px 4px 4px 4px;border:1px solid #ddd;margin-top: 40px;width: 90%;margin-left: 8%;">
		<div style="text-align:center;margin-top: 5%;">
		<h4>人气主播</h4>
		</div>
		<div>
		<ul class="list-unstyled" style="margin-left: 15%;margin-top: 8%;">
				<li style="margin-top:10px">
						<img src="liveimages/number_1.png" class="img-circle" />
						<img src="liveimages/liver1.png" class="img-circle" style="margin-left: 3%;" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>林华耀</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<img src="liveimages/number_2.png" class="img-circle" />
						<img  src="liveimages/live3.png" class="img-circle" style="margin-left: 3%;" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>梁立威</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<img src="liveimages/number_3.png" class="img-circle" />
						<img src="liveimages/liver6.png" class="img-circle" style="margin-left: 3%;"/>
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>梁立威</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<div style=" float:left; width:25px; height:25px; background-color:#F9CF1F; border-radius:25px;margin-top: 10px;margin-left: 3px;">
         <span style="height:25px; line-height:25px; display:block; color:#FFF; text-align:center">4</span>
         </div>
						<img alt="140x140" src="liveimages/liver4.png" class="img-circle" style="margin-left: 6%;"/>
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>林大塔</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<div style=" float:left; width:25px; height:25px; background-color:#F9CF1F; border-radius:25px;margin-top: 10px;margin-left: 3px;">
         <span style="height:25px; line-height:25px; display:block; color:#FFF; text-align:center">5</span>
         </div>
						<img alt="140x140" src="liveimages/liver4.png" class="img-circle" style="margin-left: 6%;"/>
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>林大塔</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<div style=" float:left; width:25px; height:25px; background-color:#F9CF1F; border-radius:25px;margin-top: 10px;margin-left: 3px;">
         <span style="height:25px; line-height:25px; display:block; color:#FFF; text-align:center">6</span>
         </div>
						<img alt="140x140" src="liveimages/liver5.png" class="img-circle" style="margin-left: 6%;"/>
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>林大塔</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
				<li style="margin-top:10px">
				<div style=" float:left; width:25px; height:25px; background-color:#F9CF1F; border-radius:25px;margin-top: 10px;margin-left: 3px;">
         <span style="height:25px; line-height:25px; display:block; color:#FFF; text-align:center">7</span>
         </div>
						<img alt="140x140" src="liveimages/liver5.png" class="img-circle" style="margin-left: 6%;"/>
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a style="text-decoration:none;color:black" href="#"><strong>林大塔</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							
				</li>
				
			</ul>
		</div>
		
		
		</div>
		
		
		</div>
		
	</div>
	-->
</div>
  </body>
</html>
