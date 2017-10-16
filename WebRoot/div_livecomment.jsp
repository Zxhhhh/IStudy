<%@page import="com.why.vo.VO4LiveCommentShowRtn"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="com.why.vo.VO4LiveShowRtn" %>
<%@ page import="com.why.vo.VO4LiveIdQueryParam" %>
<%@ page import="java.util.*" %>
<%@ page import="com.why.service.LiveService" %>
<%@ page import="com.why.service.LiveCommentService" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'div_livecomment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.username{
    font-size: 14px;
    font-weight: 600;
    margin: 0 0 20px 0;
    color: #0076CC;
}
.p1{
    font-size: 8px;
    font-weight: 600;
    margin: 0 0 20px 0;
   


}


</style>
  </head>
  
  <body>
  
   <% 			
   
   				String live_id="";
   				if(request.getParameter("live_id")!=null){
   					 live_id=request.getParameter("live_id");
   						}
   						
   						if((String)request.getAttribute("live_id")!=null){
   						
   						 live_id=(String)request.getAttribute("live_id");
   						
   						}
					ArrayList<VO4LiveCommentShowRtn> commentlist = new ArrayList<VO4LiveCommentShowRtn>();
					LiveCommentService liveCommentService = new LiveCommentService();
					commentlist = liveCommentService.queryCommentByLiveId(Integer.parseInt(live_id));
					
					
					for(int i=0;i<commentlist.size();i++){
				
				%>
					<div class="media" style="margin:1em 0;">
						<span class="username">@<%=commentlist.get(i).getComment_username() %></span>:<span class="p1"><%=commentlist.get(i).getComment_contentg() %></span>
						<div class="media-body">
							<p></p>
						</div>
					</div>
				
				<%} %>
  </body>
</html>
