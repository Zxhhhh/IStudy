<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.why.vo.VO4LiveTypeShowRtn" %>
<%@ page import="java.util.*" %>
<%@page import="com.why.service.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'liveheader.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <% String pages = request.getParameter("page"); %>
   <div class="list-header" >
  	
            <div class="list-title">正在直播</div>
            <ul class="list-header-hots clearfix" style="padding-left: 0px;list-style:none;">
             <%
				List<VO4LiveTypeShowRtn> liveTypeShowRtns = new ArrayList<VO4LiveTypeShowRtn>();
				LiveTypeService liveTypeService = new LiveTypeService();
				liveTypeShowRtns = liveTypeService.queryAllLiveType();
				
				%>
             
		
             <li><a <%if("all".equals(pages)){ %>class="selected"<%} %> href="live.jsp">全部</a></li>
                 
                  
                  <li> <a <%if("1".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=1&page=1">java</a></li>
                  <li> <a <%if("2".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=2&page=2">C语言</a></li>
               	<li> <a <%if("3".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=3&page=3">计算机软件</a></li>
                 <li> <a <%if("4".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=4&page=4">网络安全</a></li>
                 <li> <a <%if("5".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=5&page=5">创业</a></li>
                 <li> <a <%if("6".equals(pages)){ %>class="selected"<%} %>  href="live_videobytype.jsp?type=6&page=6">C#</a></li>
                  </ul>
          </div>
  </body>
</html>
