<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String user_account = (String) session.getAttribute("user_account");
%>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">

<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><h1>
					<img class="hidden-xs" src="images/logostring.png" style="width:160px;height:70px;"
						alt="" />
					
					<img class="visible-xs-inline" src="images/logostring.png" style="width:120px;height:50px;"
						alt="" />
					
				</h1> </a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
				<form class="navbar-form navbar-right"
					action="servlet/SearchServlet" method="get">
					<input type="text" class="form-control" placeholder="搜索"
						name="keyword"> <input type="submit" value="">
				</form>
			</div>
			<div class="header-top-right">
				<div class="file">
					<a href="upload.jsp">上传</a>
				</div>

				<%
					if (user_account == null) {
				%>
				<div class="signin">
					<a href="#small-dialog3" class="play-icon popup-with-zoom-anim">注册</a>

					<!-- pop-up-box -->
					<script type="text/javascript" src="js/modernizr.custom.min.js"></script>
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
						media="all" />
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->


					<div id="small-dialog3" class="mfp-hide">
						<h3>入驻IStudy</h3>
						<div class="social-sits">

							<img src="images/logostring.png">

							<div class="button-bottom">
								<p>
									用户名已经存在? <a href="#small-dialog"
										class="play-icon popup-with-zoom-anim">直接登录</a><br> <a
										href="#small-dialog5" class="play-icon popup-with-zoom-anim">入驻须知</a>
								</p>
							</div>
						</div>
						<div class="signup">
							<form action="servlet/UserServlet?flag=register" method="post">


								<input type="text" class="email" placeholder="用户名"
									required="required"  name="user_name"
									title="Enter a valid email" /> 
									<input type="password"
									placeholder="密码" required="required" pattern=".{6,}"
									name="user_password" title="Minimum 6 characters required"
									autocomplete="off" /> 
									<input type="password" placeholder="确认密码" required="required" pattern=".{6,}"
									name="user_passwordConfirm"
									title="Minimum 6 characters required" autocomplete="off" /> 
									<input type="text" class="email" placeholder="邮箱" required="required"pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" name="user_email"
									title="Enter a valid email" /> 
									<input type="submit" value="注册" />

								<!--  <input
									type="text" class="email" placeholder="手机号码"
									maxlength="10" pattern="[1-9]{1}\d{9}"
									title="Enter a valid mobile number" /> <input type="submit"
									value="Sign Up" /> -->
							</form>
						</div>
						<div class="clearfix"></div>
					</div>

					<div id="small-dialog4" class="mfp-hide">
						<h3>Feedback</h3>
						<div class="feedback-grids">
							<div class="feedback-grid">
								<p>Suspendisse tristique magna ut urna pellentesque, ut
									egestas velit faucibus. Nullam mattis lectus ullamcorper dui
									dignissim, sit amet egestas orci ullamcorper.</p>
							</div>


							<div class="button-bottom">
								<p>
									<a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign
										in</a> to get started.
								</p>
							</div>
						</div>
					</div>
					<div id="small-dialog5" class="mfp-hide">
						<h3>
							<a
								style="float:left;font-size:12px;color:red;text-decoration:none"
								class="play-icon popup-with-zoom-anim" href="#small-dialog3">返回</a>
							入驻须知
						</h3>
						<div class="help-grid">
							<p>待加入的文本.编辑by:Zxh</p>
						</div>
						<div class="help-grids">
							<div class="help-button-bottom">
								<p>
									<a href="#small-dialog4" class="play-icon popup-with-zoom-anim">关于IStudy</a>
								</p>
							</div>
							<div class="help-button-bottom">
								<p>
									<a href="#small-dialog6" class="play-icon popup-with-zoom-anim">联系我们</a>
								</p>
							</div>
							<div class="help-button-bottom">
								<p>
									<a href="#small-dialog6" class="play-icon popup-with-zoom-anim">投稿</a>
								</p>
							</div>

							<div class="help-button-bottom">
								<p>
									<a href="#small-dialog6" class="play-icon popup-with-zoom-anim">免责声明</a>
								</p>
							</div>
						</div>
					</div>

					<div id="small-dialog6" class="mfp-hide">
						<div class="video-information-text">
							<h4>Video information & settings</h4>
							<p>Suspendisse tristique magna ut urna pellentesque, ut
								egestas velit faucibus. Nullam mattis lectus ullamcorper dui
								dignissim, sit amet egestas orci ullamcorper.</p>
							<ol>
								<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus
									dapibus mi ut elit fermentum tincidunt.</li>
								<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus
									dapibus mi ut elit fermentum tincidunt.</li>
								<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus
									dapibus mi ut elit fermentum tincidunt.</li>
								<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus
									dapibus mi ut elit fermentum tincidunt.</li>
								<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus
									dapibus mi ut elit fermentum tincidunt.</li>
							</ol>
						</div>
					</div>
					<script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type : 'inline',
								fixedContentPos : false,
								fixedBgPos : true,
								overflowY : 'auto',
								closeBtnInside : true,
								preloader : false,
								midClick : true,
								removalDelay : 300,
								mainClass : 'my-mfp-zoom-in'
							});

						});
					</script>
				</div>


				<div class="signin">
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a>
					<div id="small-dialog" class="mfp-hide">
						<h3>
							<strong>用户登录</strong>
						</h3>
						<div class="social-sits">
							<div class="facebook-button">
								<a href="#">用微博登录</a>
							</div>
							<div class="chrome-button">
								<a href="#">分享给好友</a>
							</div>
							<div class="button-bottom">
								<p>
									还没有账号? <a href="#small-dialog3"
										class="play-icon popup-with-zoom-anim">马上注册</a>
								</p>
							</div>
						</div>
						<div class="signup">
							<form action="servlet/UserServlet?flag=login" method="post"
								name="loginform" onsubmit="return doCheck();">

								<input type="text" class="email" placeholder="输入用户名"
									required="required" name="user_name" /> <input
									type="password" placeholder="输入密码" required="required"
									pattern=".{6,}" title="Minimum 6 characters required"
									name="user_password" autocomplete="off" /> <input
									style="width:200px" type="text" placeholder="输入验证码"
									required="required" name="user_checkCode" autocomplete="off" />
								<img id="checkCodeImg" src="checkCode.jsp" onclick="changeP();"><br>

								<input type="submit" value="登录" />
							</form>
							<div class="forgot">
								<a href="#">忘记密码 ?</a>
							</div>
						</div>
						<script>
						    /*changP():刷新验证码*/
							function changeP() {
								var checkCodeImg = document
										.getElementById("checkCodeImg");
								checkCodeImg.src = "checkCode.jsp";
							}
						</script>
						<div class="clearfix"></div>
					</div>
				</div>
				<%
					} else {
				%>
				<h4 style="display:inline-block;margin-left:30px;mrgin-right:15px;position:relative;">
					欢迎,<a
						href="about.jsp?user_id=<%=session.getAttribute("user_id")%>"
						class="dropdown-toggle" data-toggle="dropdown"
						style="text-decoration:none;color:black;margin-right:10px">@<%=user_account%>
						</a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel" style="diplay:inline-block;position:absolute;">
						<li class="nav-header"><small>用户功能</small></li>
						<li class="nav-header" style="margin-top:5px"><a href="about.jsp?user_id=<%=session.getAttribute("user_id")%>">个人中心</a></li>
						<li class="divider"></li>
						<li class="nav-header"><a href="servlet/UserServlet?flag=logout">退出</a></li>
						</ul>
						
				</h4>
				<%
					}
				%>

				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</nav>
