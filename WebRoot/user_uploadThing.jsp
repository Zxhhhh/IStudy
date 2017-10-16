<%@page import="com.why.vo.VO4VideoTypeShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.why.service.UserService"%>
<%@page import="com.why.vo.VO4UserShowRtn"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	String user_id = request.getParameter("user_id");
	
	user_id ="1";
	
	VO4UserShowRtn usr = new UserService().queryById(user_id);
	
	String date = new SimpleDateFormat("yyyy-mm-dd").format(new Date());
	
	List<VO4VideoTypeShowRtn> types = new VideoService().queryAllType();
	
	types.get(0).getType_id();
	types.get(0).getType_name();
	
	pageContext.setAttribute("types", types);

%>

<!DOCTYPE html>
<html>
<head>

<title>My JSP 'user_uploadThing.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />

<!-- 通知框 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="themes/original.css" rel="stylesheet">
<script src='js/humane.js'></script>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-form.js"></script>
<script src="js/layer/layer.js"></script>


<script type="text/javascript">

$(function(){
	
	$("#submitBtn").click(function(){
		
		layer.confirm('是否确定新增空闲',{
		  	btn:['确定','取消'],
		  },function(){
		  
		  		var file = $("#inputFile").val();
		  		
		  		/* if(Utils.isEmpty(value)){
		  			alert("请选择视频源头");
		  			return false;
		  		} */
		  		
		  		if(!file.match(/.avi|.mp4|.wmc|.mp3/i)){
		  			alert("视频格式错误");
		  			return false;		
		  		
		  		}
		  		
		  		var option = {
		  		
		  			url:"servlet/VideoServlet?flag=uploadVideo",
		  			type:"post",
		  			headers:{"ClientCallMode":"ajax"}, //添加请求头部
		  			success:function(data){
		  				layer.msg('新增成功',{
							icon : 1	  		
		  				});
		  				
		  			},
		  			beforeSend:function(){
		  				layer.load();
		  			},
		  			error:function(data){
		  				layer.msg('上传出错',{
		  					icon : 2
		  				});
		  				
		  			}
		  		
		  		};
		  		
		  		$("#form1").ajaxSubmit(option);
		  		
		  
		  	/* $("#form1").submit();
		  	
		  	layer.msg('新增成功',{
						icon : 1	  		
		  	}); */
		  	
		  	/* $.ajax({
		  	
		  		type:"post",
		  		async:"true",
		  		url:"servlet/VideoServlet?flag=uploadVideo",
		  		data:$("#form1").submit(),
		  		success:function(data){
		  			
		  			layer.msg('新增成功',{
						icon : 1	  		
		  			});
		  		},
		  		beforeSend:function(){
		  		
		  			layer.load();
		  			
		  		}
		  	}); */
		  	
		  	
		  }, function(){
		  	layer.msg('取消',{
		  		icon : 2
		  	});
		  });
			});
		});
	
	function aa(){
	  
	}

</script>

</head>

<body>
			<form id="form1" class="form-horizontal" style="margin-top:10%" action="" method="post" enctype="multipart/form-data" target="_parent">
				
				<input type="hidden" class="form-control" id="inputDate" name="date" value="<%=date %>" style="width:60%"  />
				
				<div class="form-group">
					<label class="col-sm-3 control-label"  for="inputVideoName">视频名:</label>		
					<div class="col-sm-8">
						<input type="text" class="form-control" id="inputUser" name="video_name"  style="width:73%"  />
					</div>			
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label" style="margin-left:1%"  for="inputVideoType">视频类型:</label>
					<div class="col-sm-8">
						<select name="video_type" class="form-control" style="width:70%">
							<option selected="selected" >--请选择--</option>
							<c:forEach items="${pageScope.types }" var="type" > <!-- 在这里使用jstl循环输出 -->
								<option value="${type.type_id }">${type.type_name }</option>
							</c:forEach>							
						</select>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="col-sm-3 control-label">难度</label>
					<div class="col-sm-8">
						<label class="radio-inline">
						  <input type="radio" name="video_level" id="level1" value="1"> 低级
						</label>
						<label class="radio-inline">
						  <input type="radio" name="video_level" id="level2" value="2"> 中级
						</label>
						<label class="radio-inline">
						  <input type="radio" name="video_level" id="level3" value="3"> 高级
						</label>					
					</div>
				</div>
				
				 <div class="form-group">
					    <label class="col-sm-3 control-label"  for="inputVideoName">视频简述:</label>		
						<div class="col-sm-8">
							<textarea class="form-control" name="video_content" style="width:71%;height:61%"></textarea>
						</div>	
				  </div>
				  
				  <div class="form-group">
					<label class="col-sm-3 control-label"   for="inputFile">视频源:</label>
					<div class="col-sm-8">
						<input type="file" class="form-control" id="inputFile" name="file"  style="width:60%;border-radius:10px"  />
					</div>
				</div>
				  
			</form>
			<div class="form-group">
					<button  style="margin-left:10%" class="col-sm-3 btn btn-default" id="submitBtn" ><i class="glyphicon glyphicon-cloud-upload"></i>开始上传</button>
			</div>

</body>
</html>
