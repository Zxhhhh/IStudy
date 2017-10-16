<%@page import="com.why.service.StudyService"%>
<%@page import="com.why.vo.VO4ArticleComment"%>
<%@page import="com.why.service.Study_articleService"%>
<%@page import="com.why.vo.VO4Article"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学之路-文章</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<script type="text/javascript">
/* 页面后退js */
function back(){
location.href=document.referrer;
}
</script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<!--<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> -->
<!-- //fonts -->
</head>
<body>

	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- 侧边栏 -->
	<%
		String userid =(String) session.getAttribute("user_id") ;
		String articleid = request.getParameter("article_id");
		
		if (articleid == null || articleid.equals("")) {
			out.println("非法操作");
		} else {
		if(userid!=null&&articleid!=null&&!userid.equals("")&&!articleid.equals("")){
					int result = new StudyService().findStudyState(Integer.parseInt(userid));
			if(result==1){
			new StudyService().studyArticle(Integer.parseInt(userid), Integer.parseInt(articleid));
			}
		}
			int article_id = Integer.parseInt(articleid);
			VO4Article article = new Study_articleService()
					.findByPrimary(article_id);
	%>


	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="show-top-grids">
			<div class="col-sm-8 single-left">
				<div class="article">
					<font size="2px"><a style="text-decoration: none;" href="#" onclick="back()">返回上一页</a></font><h2><b><%=article.getArticle_name()%></b></h2>
					<div class="published" style="margin-top: 15px;    background: rgba(0,0,0,.0001);">
						<font size="3px"><b>作者：<%=article.getArticle_author()%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!-- <font size="3px">原文：Typing Chinese like Englishy</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
						<br> <font size="3px"><b>日期：<%=article.getArticle_time()%></b></font>

					</div>

					<div class="text"
						style="margin-top: 30px;margin-bottom: 88px;font-size: medium;">
						<font style="line-height: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=article.getArticle_content()%></font>

					</div>

				</div>



				<div class="all-comments">
					<div class="all-comments-info">
						<%
							int comment_count = new Study_articleService()
										.findCountByArticle_id(article_id);
						%>
						<a href="#">所有评论(<%=comment_count%>)</a>
						<div class="box">
							<%

								if (userid == null) {
							%>
								请先 <a href="#small-dialog"
										class="play-icon popup-with-zoom-anim">登录</a>后再评论
							<%
								} else {
							%>

							<form action="servlet/ArticleServlet?op=commentadd" method="post">
								<!-- <input type="text" placeholder="用户名" name="username" required=""> -->
									<input type="hidden"  name="article_id" value="<%=article_id%>">
								<textarea placeholder="评论" name="comment_content" required=""></textarea>
								<input type="submit" value="评论">
								<div class="clearfix"></div>
							</form>
							<%
								}
							%>
						</div>
<!-- 						<div class="all-comments-buttons">
							<ul>
								<li><a href="#" class="top">最热评论</a>
								</li>
								<li><a href="#" class="top newest">最新评论</a>
								</li>
								<li><a href="#" class="top my-comment">我的评论</a>
								</li>
							</ul>
						</div> -->
					</div>
					<div class="media-grids">
						<%
							List<VO4ArticleComment> list = new Study_articleService()
										.findCommentsByArticle_id(article_id);
								for (VO4ArticleComment vo : list) {
									int comment_id = vo.getComment_id();
									String username = vo.getComment_username();
									String content = vo.getComment_content();
									String date = vo.getComment_date();
						%>

						<div class="media">
							<h5><%=username%></h5>
							<div class="media-left">
								<a href="#"> </a>
							</div>
							<div class="media-body">
								<p><%=content%></p>
								<span><%=date%></span>
							</div>
						</div>


						<%
							}
						%>



					</div>
				</div>
			</div>
			<div class="col-md-4 single-right">
				<h3>最热文章</h3>
				<div class="single-grid-right">

					<%
						List<VO4Article> list2 = new Study_articleService()
									.findTopTenArticle();
							for (VO4Article vo4Article : list2) {
					%>



					<div class="single-right-grids">
						<div class="col-md-4 single-right-grid-left">
							<a href="single.jsp"><img src="<%=vo4Article.getArticle_pic()%>" alt="" /> </a>
						</div>
						<div class="col-md-8 single-right-grid-right">
							<a href="single.jsp" class="title"><%=vo4Article.getArticle_name()%></a>
							<p class="author">
								<a href="#" class="author"><%=vo4Article.getArticle_author()%></a>
							</p>
							<p class="views"><%=vo4Article.getArticle_count()%>浏览
							</p>
						</div>
						<div class="clearfix"></div>
					</div>

					<%
						}
						}
					%>


				</div>
			</div>
			<div class="clearfix"></div>
		</div>

		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->

	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a>
			</li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a>
			</li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a>
			</li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>