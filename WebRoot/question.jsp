<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'question.jsp' starting page</title>
    
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

  </head>
  
  <body>
  <div style="padding: 50px;"> 
    <form class="layui-form" action="<%=basePath%>servlet/QuestionServlet?action=add" target="_parent" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">标题</label>
    <div class="layui-input-block">
      <input type="text" name="question_topic" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
<input type="text" name="user_id" style="display: none;" value="<%=request.getParameter("user_id")%>">
 <input type="text" name="live_id" style="display: none;" value="<%=request.getParameter("live_id")%>">
  <input type="text" name="question_create_time" style="display: none;"  value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>">
 <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">内容</label>
    <div class="layui-input-block">
      <textarea name="question_content" id="text" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
   <script>
layui.use('layedit', function(){
  var layedit = layui.layedit;
  layedit.build('text'); //建立编辑器
});
</script>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">提问</button>
      
    </div>
  </div>
</form>
  </div>
  </body>
</html>
