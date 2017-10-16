package com.why.servlet;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.File;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;














import com.why.extraException.BaseException;
import com.why.service.UserService;
import com.why.util.EncrypeUtil;
import com.why.vo.*;



public class UserServlet extends HttpServlet {
		
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String flag = request.getParameter("flag");
		if("register".equals(flag)){
			userRegister(request, response);
		}else if("login".equals(flag)){
			userLogin(request, response);
		}else if("update".equals(flag)){
			userUpdate(request, response);
		}else if("logoUpload".equals(flag)){
			userLogoUpload(request,response);
		}else if("followAdd".equals(flag)){
			userFollowAdd(request, response);
		}else if("followDelete".equals(flag)){
			userFollowDelete(request, response);
		}else if("logout".equals(flag)){
			userLogout(request, response);
		}
	}
	
	//用户注册
	public void userRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_passwordConfirm = request.getParameter("user_passwordConfirm");
		String user_email = request.getParameter("user_email");
		
		user_password = EncrypeUtil.tran2MD5(user_password);
		user_passwordConfirm = EncrypeUtil.tran2MD5(user_passwordConfirm);
		
		VO4UserAddParam uap = new VO4UserAddParam(user_name, user_password, user_email, user_passwordConfirm);
		
		String userRegisterRtn = new UserService().user_register(uap);
		
		if("0".equals(userRegisterRtn)){
			request.getSession().setAttribute("user_account", user_name);
			request.getSession().setAttribute("user_id", new UserService().queryByName(user_name).getUser_id());
		}
		
		String[] responseInfoList = new String[]{"注册成功","注册失败","两次密码不相同，重新输入","邮箱格式错误，请重新注册","用户名已经存在，请重新注册或直接登录"};
		
		int i = Integer.parseInt(userRegisterRtn);
		
		request.getSession().setAttribute("responseInfo",responseInfoList[i]);
		response.sendRedirect("../index.jsp");
		//+URLEncoder.encode(userRegisterRtn,"utf-8")
		
	}
	
	//用户登录
	public void userLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_checkCode = request.getParameter("user_checkCode");
		String randomCode = (String)request.getSession().getAttribute("randomCode");
		
		user_password = EncrypeUtil.tran2MD5(user_password);
		
		VO4UserLoginParam ulp = new VO4UserLoginParam(user_name, user_password, user_checkCode, randomCode);
		
		String userLoginRtn = new UserService().user_login(ulp);
		
		
		if("0".equals(userLoginRtn)){
			
			request.getSession().setAttribute("user_account",user_name);
			request.getSession().setAttribute("user_id", new UserService().queryByName(user_name).getUser_id());
		}
		
		String[] responseInfoList = new String[]{"登录成功","用户名或密码错误，请重新登录","用户名不存在，请注册或重新输入","验证码错误"};
		
		int i = Integer.parseInt(userLoginRtn);
		
		request.getSession().setAttribute("responseInfo",responseInfoList[i]);
		response.sendRedirect("../index.jsp?");
	}
	
	public void userLogout(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		request.getSession().invalidate();
		response.sendRedirect("../index.jsp");
	}
	
	//用户更新个人资料
	public void userUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String user_name = (String)request.getSession().getAttribute("user_account");
		String user_sex = request.getParameter("user_sex");
		String user_age = request.getParameter("user_age");
		String user_email = request.getParameter("user_email");
		String user_summary = request.getParameter("user_summary");
		
		System.out.println(user_summary);
		
		VO4UserUpdateParam uup = new VO4UserUpdateParam(user_name, user_sex, user_age, user_email, user_summary);
		
		String user_updateRtn = new UserService().user_update(uup);
		
		String[] responseInfoList = new String[]{"设置成功","设置失败","邮箱格式不正确"};
		int i = Integer.parseInt(user_updateRtn);
		
		request.getSession().setAttribute("responseInfo", responseInfoList[i]);
		response.sendRedirect("../about.jsp?user_id="+new UserService().queryByName(user_name).getUser_id());
		
			}
	
	//头像上传
	public void userLogoUpload(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
	
		//使用smartUpload组件上传文件
		/*
		SmartUpload smartUpload = new SmartUpload();
		
		
		//初始化上传组件
		ServletConfig config = this.getServletConfig();
		smartUpload.initialize(config,request,response);
		
		try {
			smartUpload.upload(); //上传文件
			
			File smartFile = smartUpload.getFiles().getFile(0); //获得上传的文件对象
			
			smartFile.saveAs("/Files/"+smartFile.getFileName(),smartUpload.SAVE_VIRTUAL); //保存文件到服务端中
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("../index.jsp");
		*/
		
		//使用jsp+servlet实现文件上传
		/*1.保存输入流信息*/
		InputStream input = request.getInputStream();
		
		File tempFile_dir = new File(this.getServletContext().getRealPath("/")+"tempSaves");
		
		if(!tempFile_dir.exists()){
			tempFile_dir.mkdir();
		}
		
		
		File tempFile = new File(this.getServletContext().getRealPath("/")+"tempSaves/tempFile.txt");
		
		FileOutputStream bufOutput =  new FileOutputStream(tempFile);
		
		byte[] bytes = new byte[1024];
		int i=0;
		
		while((i=input.read(bytes))!=-1){
			bufOutput.write(bytes,0,i); //这里一定要注意，控制写的范围，不然最后一次会写多
		}
		input.close();
		bufOutput.close();
		
		/*2.获取文件起止位置*/
		 //1.获取文件名
		 RandomAccessFile raf = new RandomAccessFile(tempFile,"r");
		 raf.readLine();
		 String str = raf.readLine();
		 int beginIndex = str.lastIndexOf("=")+2;
		 int lastIndex = str.lastIndexOf("\"");
		 String fileName = str.substring(beginIndex,lastIndex);
		 System.out.println(fileName);
		 
		 //2.获取文件内容开始位置
		 raf.seek(0);//把指针重置到开始位置
		 long startPosition = 0;
		 int x=1;
		 while((i=raf.readByte())!=-1&&x<=4){
			 if(i=='\n'){//遇到换行符,换新的一行
				 startPosition = raf.getFilePointer();
				 x++;
			 }
		 }
		 startPosition = startPosition;
		 
		 //3.获取文件内容结尾位置
		  raf.seek(raf.length());
		  long endPosition =raf.getFilePointer();
		  int y =1;
		  
		  while(endPosition>=0&&y<=2){
			  endPosition--;
			  raf.seek(endPosition);
			  if(raf.readByte()=='\n'){
				  y++;
			  }
		  }
		  endPosition= endPosition-1;
		  
		  System.out.println("开始位置:"+startPosition+"\n结尾位置:"+endPosition);
		
	   /*3.保存上传文件内容*/
		  //1.设置保存上传文件的路径
		  String realPathString_src = this.getServletContext().getRealPath("/")+"userLogo"; //Tomcat项目下的路径
		  
		  String allPathString ="";
		  
//		  InputStream is=null;
//			Properties properties = new Properties();
//			try {
//				is = new FileInputStream("workspace.properties");
//				properties.load(input);
//				allPathString = properties.getProperty("Workspace");
//
//				if(is!=null){
//					is.close();
//				}
//			} catch (Exception e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
		
//		  String realPathString = allPathString+"/IStudy/WebRoot/userLogo"; //Eclipse工作空间项目下的路径
		
	
		  
//		  File fileuploadDir = new File(realPathString);
		  File fileuploadDir_src = new File(realPathString_src);
		  
//		  if(!fileuploadDir.exists()){
//			  fileuploadDir.mkdir();
//		  }
		  
		  if(!fileuploadDir_src.exists()){
			  fileuploadDir_src.mkdir();
		  }
		  
		  
		  //2.设置文件路径
		  String user_account = (String)request.getSession().getAttribute("user_account");
		  String fileNamePostfix = fileName.substring(fileName.lastIndexOf("."),fileName.length()); //获得上传文件的后缀
		  String uploadFileName = (String)request.getSession().getAttribute("user_account")+"Logo"+fileNamePostfix;
		  
//		  File saveFile = new File(fileuploadDir,uploadFileName);
		  File saveFile_src = new File(fileuploadDir_src,uploadFileName);
//		  RandomAccessFile randomFile = new RandomAccessFile(saveFile,"rw");//指向MyEclipse工作目录
		  RandomAccessFile randomFile_src = new RandomAccessFile(saveFile_src,"rw");
		  //RandomAccessFile randomFile_src =
		  
		  long startPosition_src = startPosition;
		  long endPosition_src = endPosition;
		  
		  //3.写数据
//		  raf.seek(startPosition);//raf对应的是临时文件，读取数据
//		  while(startPosition<endPosition){
////			  randomFile.write(raf.readByte());//randomFile对应文件，写数据
//			  startPosition= raf.getFilePointer();
//		  }
		  
		  raf.seek(startPosition_src);//raf对应的是临时文件，读取数据
		  while(startPosition_src<endPosition_src){
			  randomFile_src.write(raf.readByte());//randomFile_src对应文件，写数据
			  startPosition_src= raf.getFilePointer();
		  }
		  
		  
		  raf.close();
//		  randomFile.close();
		  randomFile_src.close();
		  
	   /*4.调用方法修改用户的user_pic字段*/
		  String uploadLogoRtn = new UserService().updateLogo(user_account,uploadFileName);
		  response.sendRedirect("../user_edit.jsp?uploadLogoRtn="+uploadLogoRtn);
	}
	
	
	
	//头像下载
	public void userLogoDown(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		//1.获取文件下载路径
		String realPath = getServletContext().getRealPath("/")+"userLogo/";
		String filename = request.getParameter("filename");
		File file = new File(realPath+filename);
		if(file.exists()){
			
			//2.设置文件类型
			response.setContentType("application/x-msdownload");
			
			//3.设置头信息
			response.setHeader("Content-Disposition","attachment;filename=/"+filename+"/");
			
			//4.进行数据传输
			InputStream input = new FileInputStream(file);
			ServletOutputStream output = response.getOutputStream();
			byte[] buf = new byte[1024];
			int i=0;
			while((i=input.read(buf))!=-1){
				output.write(buf,0,i);
			}
			input.close();
			output.close();
		}else{
			throw new BaseException("文件不存在");
		}
	}
	
	
	/*视频上传*/
	private void uploadThing(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//使用jsp+servlet实现文件上传
		/*1.保存输入流信息*/
		InputStream input = request.getInputStream();
		String tempFileName = "D:/tempFileSave/tempFiles";
		
		File tempFile = new File(tempFileName);
		
		FileOutputStream bufOutput =  new FileOutputStream(tempFile);
		
		byte[] bytes = new byte[1024];
		int i=0;
		
		while((i=input.read(bytes))!=-1){
			bufOutput.write(bytes,0,i); //这里一定要注意，控制写的范围，不然最后一次会写多
		}
		input.close();
		bufOutput.close();
		
		/*2.获取文件起止位置*/
		 //1.获取文件名
		 RandomAccessFile raf = new RandomAccessFile(tempFileName,"r");
		 raf.readLine();
		 String str = raf.readLine();
		 int beginIndex = str.lastIndexOf("=")+2;
		 int lastIndex = str.lastIndexOf("\\");
		 String fileName = str.substring(lastIndex+1,str.length()-1);
		 
		 //2.获取文件内容开始位置
		 raf.seek(0);//把指针重置到开始位置
		 long startPosition = 0;
		 int x=1;
		 while((i=raf.readByte())!=-1&&x<=4){
			 if(i=='\n'){//遇到换行符,换新的一行
				 startPosition = raf.getFilePointer();
				 x++;
			 }
		 }
		 startPosition = startPosition;
		 
		 //3.获取文件内容结尾位置
		  raf.seek(raf.length());
		  long endPosition =raf.getFilePointer();
		  int y =1;
		  
		  while(endPosition>=0&&y<=2){
			  endPosition--;
			  raf.seek(endPosition);
			  if(raf.readByte()=='\n'){
				  y++;
			  }
		  }
		  endPosition= endPosition-1;
		  
		  System.out.println("开始位置:"+startPosition+"\n结尾位置:"+endPosition);
		
	   /*3.保存上传文件内容*/
		  //1.设置保存上传文件的路径
		  
		  String date = new SimpleDateFormat("YYYY.MM.dd").format(new Date()); //日期
		  String  type = request.getParameter("type"); //类型:视频
		  String user = (String)request.getSession().getAttribute("user_account");//用户(getAttribute获取)
		  
		  
		  String realPathString_src = this.getServletContext().getRealPath("/")+type+"/"+user+"/"+date; //Tomcat项目下的路径
		  
		  System.out.println(realPathString_src);
		  
		  File fileuploadDir_src = new File(realPathString_src);
		  
		  if(!fileuploadDir_src.exists()){ //创建保存路径文件夹
			  fileuploadDir_src.mkdirs();
		  }
		  
		  
		  //2.设置文件路径
		  String uploadFileName = fileName;
		  
		  File saveFile_src = new File(fileuploadDir_src,uploadFileName);
		  RandomAccessFile randomFile_src = new RandomAccessFile(saveFile_src,"rw");
		  
		  long startPosition_src = startPosition;
		  long endPosition_src = endPosition;
		  
		  //3.写数据
		  
		  raf.seek(startPosition_src);//raf对应的是临时文件，读取数据
		  while(startPosition_src<endPosition_src){
			  randomFile_src.write(raf.readByte());//randomFile_src对应文件，写数据
			  startPosition_src= raf.getFilePointer();
		  }
		  
		  raf.close();
		  randomFile_src.close();
	}
	
	
	
	
	
	
	//添加关注
	public void userFollowAdd(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		String myid = (String)request.getSession().getAttribute("user_id");
		String otherid = request.getParameter("otherid");
		
		VO4UserFollowAddParam ufap = new VO4UserFollowAddParam(myid,otherid);
		
		String userFollowAddRtn = new UserService().fllowAdd(ufap);
		
		response.sendRedirect("../about.jsp?user_id="+otherid);
		
	}
	
	
	//取消关注
	public void userFollowDelete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		String myid = (String)request.getSession().getAttribute("user_id");
		String otherid = request.getParameter("otherid");
		
		VO4UserFollowDeleteParam ufdp = new VO4UserFollowDeleteParam(myid,otherid);
		
		String userFollowDeleteRtn = new UserService().followDelete(ufdp);
		
		response.sendRedirect("../about.jsp?user_id="+otherid);
	}
	
	
}
