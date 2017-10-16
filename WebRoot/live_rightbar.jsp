<%@page import="com.why.service.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.why.vo.VO4LiveTypeShowRtn" %>
<%@ page import="java.util.*" %>
<%@ page import="com.why.service.LiveService" %>
<% String right_pages = request.getParameter("shows"); %>
		
				<div class="col-md-2 show-grid-right">
					<h3 style="font-family: Microsoft YaHei;">直播分类</h3>
					<%
				List<VO4LiveTypeShowRtn> liveTypeShowRtns = new ArrayList<VO4LiveTypeShowRtn>();
				LiveTypeService liveTypeService = new LiveTypeService();
				liveTypeShowRtns = liveTypeService.queryAllLiveType();
				
				
				
				for(int i=0;i<liveTypeShowRtns.size();i++){
		
					 %>
					<div class="show-right-grids">
						<ul >
							<li class="tv-img"><a href="#"><img src="images/tv.png" alt="" /></a></li>
							<li><a href="live_videobytype.jsp?type=<%=liveTypeShowRtns.get(i).getType_id()%>" style="font-family: Microsoft YaHei;"><%=liveTypeShowRtns.get(i).getType_name() %></a></li>
						</ul>
				</div>
				<% }%>
				</div>