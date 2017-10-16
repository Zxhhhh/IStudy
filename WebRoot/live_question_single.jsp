<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.why.vo.VO4LiveQuestionRtn"%>
<%@page import="com.why.vo.VO4Comment$UserRtn"%>
<%@page import="com.why.service.LiveQuestionService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'live_question_single.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<script src="js/jquery-1.11.1.min.js"></script>
<link href="layui/css/layui.css" rel="stylesheet">
<script src="layui/layui.js"></script>
<script type="text/javascript">
function checkLogin(){
	
	
 layer.msg('您尚未登录，请先登录！如果没有账号，可以在右上角选择注册！');
	
}
</script>
  </head>
  
  <body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<jsp:include page="navbar.jsp"></jsp:include>

		</div>
	</div>
	<div class="row clearfix">
	<%
		LiveQuestionService liveQuestionService = new LiveQuestionService();
		VO4LiveQuestionRtn vo4LiveQuestionRtn = new VO4LiveQuestionRtn();
		vo4LiveQuestionRtn = liveQuestionService.queryQuestionByQId(Integer.parseInt(request.getParameter("question_id")));
		
	
	%>
		<div class="col-md-12 column" style="padding-top: 5%;">
		<h3><%=vo4LiveQuestionRtn.getQuestion_topic()%></h3>
		
		<span style="color: #c2c2c2;float: right;"> 浏览 10 回答 1</span>
		<hr>
		<div style="background-color: #f2f2f2;height: 10%;padding: 5px;">
				<div style="margin-top: 4px;">
				 <a href="#" class="pull-left"><img src="liveimages/liver5.png" class="media-object" alt='' /></a>
				
				
				</div>
				<div  style="margin-top: 5px;">
					<span><a><%=vo4LiveQuestionRtn.getUser_name() %></a></span>
					
					<span style="color: #c2c2c2;float: right;">发布于： <%=vo4LiveQuestionRtn.getQuestion_create_time()%></span>
					
				</div>
				<span style="margin-top: 10px;color: #FE7A1E">悬赏：5积分</span>
			</div>
			<div style="font-size: 15px;margin-top: 10px;">
			<p>
			<%=vo4LiveQuestionRtn.getQuestion_content()%>
			<p>
			</div>
			<hr>
			
			<div>
			<ul class="list-unstyled">
			<%
			List<VO4Comment$UserRtn> vocomments = new ArrayList<VO4Comment$UserRtn>();
			vocomments = liveQuestionService.queryCommentByQid(Integer.parseInt(request.getParameter("question_id")));
			for(int i=0;i<vocomments.size();i++){
			%>
    <li>
    <div class="media" style="margin-bottom: 15px;">
				 <a href="#" class="pull-left">
				 <img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="img-circle" alt='' />
				 <span style="display: block;text-align: center;"><%=vocomments.get(i).getUser_name() %></span>
				 </a>
				<div class="media-body" >
				<div style="font-size: 15px;margin-top: 5px;">
			<p>
			<%=vocomments.get(i).getComment_content() %>
			<p>
			</div>
					
					<div style="margin-top:2%;">
					<span><%=vocomments.get(i).getComment_create_time() %>
					</span> 
					<div style="float: right;"><a href=""><span>回复 10</span></a> 
					<span>赞 10</span>
					
					</div> 
					</div>
					
					</div>
				</div>
		<hr>
		
    
    
    </li>
    <%
			}
    %>
			</ul>
			<div>
		<form class="layui-form" action="servlet/QuestionServlet?action=addComment" method="post">
  

 <div class="layui-form-item">
    
    <input type="text" style="display: none" name="user_id" value="<%=session.getAttribute("user_id")%>">
    <input type="text" style="display: none" name="question_id" value="<%=request.getParameter("question_id")%>">
      <input type="text" style="display: none" name="comment_create_time" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) %>">
      <textarea name="comment_content" id="text" placeholder="请输入内容" class="layui-textarea"></textarea>
    
   <script>
layui.use('layedit', function(){
  var layedit = layui.layedit;
  layedit.build('text'); //建立编辑器
});
</script>
  </div>

  <div class="layui-form-item">
   <%if(session.getAttribute("user_account")==null){ %>
     
      <a onclick="checkLogin()" class="layui-btn" >回复</a>
      <%}else{ %>
      
       <button class="layui-btn" lay-submit lay-filter="formDemo">回复</button>
      
    <%} %>
  </div>
</form>
			
			</div>
			
		</div>
	</div>
</div>

  	
    
  </body>
</html>
