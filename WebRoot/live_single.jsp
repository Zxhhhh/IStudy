<%@page import="com.why.service.LiveTypeService"%>
<%@page import="com.why.vo.VO4LiveQuestionRtn"%>
<%@page import="com.why.service.LiveQuestionService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@page import="com.why.vo.VO4LiveCommentShowRtn"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="com.why.vo.VO4LiveShowRtn" %>
<%@ page import="com.why.vo.VO4LiveIdQueryParam" %>
<%@ page import="java.util.*" %>
<%@ page import="com.why.service.LiveService" %>
<%@ page import="com.why.service.LiveCommentService" %>
<%@ page import="com.why.service.UserService" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'live_single2.jsp' starting page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<style>



main {
  background: #FFF;
  width: 500px;
  margin: 50px auto;
  padding: 10px 30px 80px;
  box-shadow: 0 3px 5px rgba(0,0,0,0.2);
}
p {
  font-size: 13px;
}
input, section {
  clear: both;
  padding-top: 10px;
  display: none;
}
label {
  font-weight: bold;
  font-size: 14px;
  display: block;
  float: left;
  padding: 10px 30px;
  border-top: 2px solid transparent;
  border-right: 1px solid transparent;
  border-left: 1px solid transparent;
  border-bottom: 1px solid #DDD;
}
label:hover {
  cursor: pointer;
  text-decoration: underline;
}
#tab1:checked ~ #content1, #tab2:checked ~ #content2, #tab3:checked ~ #content3, #tab4:checked ~ #content4 {
  display: block;
}
input:checked + label {
  border-top-color: #42c02e;
  border-right-color: #DDD;
  border-left-color: #DDD;
  border-bottom-color: transparent;
  text-decoration: none;
}
</style>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/prefixfree.min.js"></script>
<script src="layer/layer.js"></script>

<script src="js/modernizr.js"></script>
<script type='text/javascript' src='js/jwplayer.js'></script>
<script type="text/javascript">
function checkLogin(){
	
	
 layer.msg('您尚未登录，请先登录！如果没有账号，可以在右上角选择注册！由于本页面的注册登录功能存在问题，请用户移步首页或者其他页面注册或者登录',{offset: '100px'});

}
function check(){
	
	
 layer.msg('功能尚未完善，敬请期待！',{offset: '100px'});

}
function add(user_id,live_id){
	
	
   layer.open({
  type: 2,
  offset: '100px',
  title: '向主播提问',
  maxmin: true,
  shadeClose: true, //点击遮罩关闭层
  area : ['800px' , '470px'],
  content: 'question.jsp?live_id='+live_id+'&user_id='+user_id
  });

}




</script>
  </head>
  
  <body>
  <%
  		
			String live_id = request.getParameter("id");
			LiveService liveService = new LiveService();
			VO4LiveIdQueryParam liveId = new VO4LiveIdQueryParam(live_id);
			VO4LiveShowRtn liveRtn=liveService.queryByLiveId(liveId);
			
  
   %>
   <div  style="padding: 5%;">
   <div class="row clearfix">
   <!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->
	
	<div class="col-md-2 column">
	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	</div>
		<div class="col-md-6 column" >
		
			<div class="media" style="margin-bottom: 10px;">
						 <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="img-circle" alt='' /></a>
						<div class="media-body">
					
						<div style="margin-top: 1%;">
							<h4 class="media-heading">
								<%=liveRtn.getLive_name()%>
							</h4> 
							</div>
							<div style="margin-top: 3%;">
								<%
							VO4UserShowRtn vo4UserShowRtn = new VO4UserShowRtn();
							UserService userService = new UserService();
							
							vo4UserShowRtn = userService.queryByName(liveRtn.getLive_author());

						
						 %>
							<span>主播：<a href="about.jsp?user_id=<%=vo4UserShowRtn.getUser_id()%>"><%=liveRtn.getLive_author() %></a></span>
							<span>类别：JAVA</span>
							<span>人气：<%=liveRtn.getLive_visitor() %></span>
							<%if(session.getAttribute("user_account")==null){ %>
				<span><a onclick="checkLogin()"  style="margin-right:10px;text-decoration:none;">向主播提问</a></span>
						<%}else{%>
							<span><a onclick="add('<%=session.getAttribute("user_id")%>','<%=live_id%>')"  style="margin-right:10px;text-decoration:none;">向主播提问</a></span>
							
							<%} %>
							<span><a onclick="check()" style="float: right;text-decoration:none;">+&nbsp;关注主播</a></span>
							</div>
						</div>
					</div>
					
				<div class="video-grid" style="margin-top: 10px;" id='mediaspace' >
				<script>
				
  				jwplayer('mediaspace').setup({
  			 	 'flashplayer': 'liveplayer/player.swf',
   				 'file': 'test',
   				 'streamer': 'rtmp://127.0.0.1/live',
   				 'controlbar': 'bottom',
  		 		 'width': '100%',
  		 		 'height': '420px',
  		 		
  		 		 
 				 });
				</script>
			
					</div>
					
			<div style="margin-top: 5%;">
<input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1">提问</label>
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2">学习资料</label>
 <!--   <section id="content2">
    <p>资料下载区 </p>
  </section>
  -->
  <section id="content1">
    
   <ul class="list-unstyled">
    <%
    	LiveQuestionService liveQuestionService = new LiveQuestionService();
		  List<VO4LiveQuestionRtn> list = new ArrayList<VO4LiveQuestionRtn>();
		  list = liveQuestionService.queryAllQuestionByLiveId(Integer.parseInt(live_id));
    	for(int i=0;i<list.size();i++)
    	{
    		%>
    <li>
    <div class="media" style="margin-bottom: 15px;">
				 <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="img-circle" alt='' /></a>
				<div class="media-body" >
				<div>
				
				<h4 class="media-heading" style="margin-top: 5px;">
						<a  href="live_question_single.jsp?question_id=<%=list.get(i).getQuestion_id()%>" style="color:black;text-decoration:none;"><%=list.get(i).getQuestion_topic()%></a>
				<font style="float:right;font-size: 15px;color: #42c02e;">主播已回答</font>
					</h4>
					
					
					 </div>
					
					<div style="margin-top:2%;">
					<span><%=list.get(i).getQuestion_create_time() %>
					</span> 
					<span style="float: right;">浏览 10 回答 10
	
					</span> 
					</div>
					
					</div>
				</div>
		<hr>
		
    
    
    </li>
    <%} %>
    </ul>
    <ul class="pagination">
				<li>
					 <a href="#">上一页</a>
				</li>
				<li>
					 <a href="#">1</a>
				</li>
				<li>
					 <a href="#">2</a>
				</li>
				<li>
					 <a href="#">3</a>
				</li>
				<li>
					 <a href="#">4</a>
				</li>
				<li>
					 <a href="#">5</a>
				</li>
				<li>
					 <a href="#">下一页</a>
				</li>
			</ul>
  </section>
  
  
 
			</div>
			</div>
		<div class="col-md-4 column" style="padding-left: 3%;">
			<div style="text-align: center;border-radius:4px 4px 4px 4px;border:1px solid #ddd;padding: 8px;margin-top: 40px;">
			<h4>主播简介</h4>
			<img alt="140x140" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg" class="img-circle" />
			<hr>
			<p>
				 <%=liveRtn.getLive_authorintroduction()%>
			</p>
			</div>
			
			<div style="padding:20px;margin-top: 50px;">
			<span style="font-size: 15px;color: #969696;">相似主播</span>
		
		
			<ul class="list-unstyled" style="text-align: left;">
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/liver1.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black" ><strong>林华耀</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/live2.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black"><strong>朱显浩</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/live3.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black" ><strong>梁立威</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/liver6.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black" ><strong>林大塔</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a  onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/liver4.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black"><strong>毕向东</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a  onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				<li style="margin-top:10px">
						<img alt="140x140" src="liveimages/liver5.png" class="img-circle" />
							<span style="margin-top: 5px;position: absolute;">
								<span style="color: #333;position:relative">
									<span>
										<a onclick="check()" style="text-decoration:none;color:black" ><strong>张孝祥</strong></a>
									</span>
									<br>
									<span style="margin-top:15px;color:#969696">JAVA主播 · 15K关注</span> 
								</span>
							</span>
							<a onclick="check()" style="float:right;font-size: 12px;color: #42c02e;margin-top: 5px">+关注</a>
				</li>
				
			</ul>
			<div style="text-align: center;">
			<a onclick="check()" class="btn btn-default btn-sm">查看全部</a>
			</div>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
