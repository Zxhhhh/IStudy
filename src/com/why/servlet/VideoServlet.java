package com.why.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.why.service.VideoService;
import com.why.util.SplitPageUtil;
import com.why.vo.VO4VideoAddParam;
import com.why.vo.VO4VideoCommentAddParam;
import com.why.vo.VO4VideoShowRtn;

public class VideoServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String flag = request.getParameter("flag");
		
		if("addVideoComment".equals(flag)){
			video_addVideoComment(request, response);
		}else if("page".equals(flag)){
			video_page(request,response);
		}else if("uploadVideo".equals(flag)){
			uploadVideo(request,response);
		}
	}
	
	//增加视频评论
	public void video_addVideoComment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String comment_videoid = request.getParameter("comment_videoid");
		String comment_content = request.getParameter("comment_content");
		String comment_username = (String)request.getSession().getAttribute("user_account");
		String comment_date = new SimpleDateFormat("YYYY-MM-dd hh:mm:ss").format(new Date());
		
		VO4VideoCommentAddParam vcap = new VO4VideoCommentAddParam(comment_videoid, comment_username, comment_content, comment_date);
		
		String add_videoCommentRtn = new VideoService().add_videoComment(vcap);
		
		int i = Integer.parseInt(add_videoCommentRtn);
		String[] responseInfo = new String[]{"评论成功","请稍后重试","评论不能少于12字"};
		
		request.getSession().setAttribute("responseInfo", responseInfo[i]);
		
		response.sendRedirect("../video_single.jsp?video_id="+comment_videoid);
	}

	//分页用Video
	public void video_page(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int totalRows = new VideoService().countRows(); //获得Video表的总条数;
		String toPage =request.getParameter("toPage");
		if(toPage==null){
			toPage="1";
		}
		
		SplitPageUtil spu = (SplitPageUtil)request.getSession().getAttribute("spu");
		if(spu==null){ //如果没有对象就设为第一页并存到session中
			spu = new SplitPageUtil(totalRows,1);
			request.getSession().setAttribute("spu", spu);
		}else{
			spu = new SplitPageUtil(totalRows,Integer.parseInt(toPage));
			request.getSession().setAttribute("spu", spu);
		}
		
		//List<VO4VideoShowRtn> vsrList = new VideoService().queryAll_page(spu);
		//request.getSession().setAttribute("video_page", vsrList);
		
		
		response.sendRedirect("../video.jsp?currentpage="+toPage);
	}
	
	
	/*用smartUpload组件上传文件*/
	private void uploadVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		response.setContentType("text/html;charset=UTF-8");
		
		String fileName="default";
		
		VO4VideoAddParam vap = new VO4VideoAddParam();
		
		DiskFileItemFactory dfif = new DiskFileItemFactory(); //硬盘文件工厂,对临时保存进行保存
		dfif.setSizeThreshold(4096);
		
	
		
		String realWebBase = this.getServletContext().getRealPath("/");
		
		//设置存放临时文件的目录
		File temp_file = new File(realWebBase+"/upload/UploadTemp");
		if(!temp_file.exists()){
			temp_file.mkdirs();
		}
		dfif.setRepository(temp_file);
		
		ServletFileUpload sfu = new ServletFileUpload(dfif);
		sfu.setHeaderEncoding("UTF-8");
		//sfu.setSizeMax(70*1024*1024);//最大尺寸70MB
		
		
		List  fileList = null;
		try{
			fileList = sfu.parseRequest(request);//从request得到所有上传域的列表
			System.out.println(fileList.size());
			
		}catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		Iterator fileItr = fileList.iterator();
		
		while(fileItr.hasNext()){
			
			FileItem fileItem = (FileItem)fileItr.next(); //得到当前文件
			
			if(fileItem.isFormField()){//如果item是普通文本，就获取其name与value
				String name = fileItem.getFieldName();
				String value = fileItem.getString("utf-8");
				System.out.println("表单域名为:"+name+"表单域值为:"+value);
				if("video_name".equals(name)){
					vap.setVideo_name(value);
				}else if("video_type".equals(name)){
					vap.setVideo_type(Integer.parseInt(value));
				}else if("video_level".equals(name)){
					vap.setVideo_level(Integer.parseInt(value));
				}else if("video_content".equals(name)){
					vap.setVideo_content(value);
				}
			}else{
				
				String path = fileItem.getName();
				System.out.println(path);
				
				long size = fileItem.getSize();
				
				//得到取出路径的文件名
				String t_name = path.substring(path.lastIndexOf("/")+1);
				System.out.println("文件名:"+t_name);
				//得到文件的扩展名(无扩展名则得到全名)
				String t_ext = t_name.substring(t_name.lastIndexOf(".")+1).toLowerCase();
				System.out.println("扩展名:"+t_ext);

				//业务名:日期，类型，用户
				String date = new SimpleDateFormat("YYYY.MM.dd").format(new Date()); //日期
				String  type = "video"; 
				String user = (String)request.getSession().getAttribute("user_account");//用户(getAttribute获取)
				
				//保存的最终文件完整路径(服务器端)
				String u_path = realWebBase+"upload/"+type+"/"+user+"\\"+date;
				String u_name = realWebBase+"upload/"+type+"/"+user+"/"+date+"/"+vap.getVideo_name()+"."+t_ext;
				String sql_name = "upload/"+type+"/"+user+"/"+date+"/"+vap.getVideo_name()+"."+t_ext;
				
				System.out.println("文件保存路径:"+u_name);
				
				try{//保存文件
					File today_file = new File(u_path);//构建文件目录
					if(!today_file.exists()){
						today_file.mkdirs();
					}
					fileItem.write(new File(u_name));
					
					System.out.println("保存成功");
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				/*数据写入数据库*/
				vap.setVideo_author(user);
				vap.setVideo_time(date);
				vap.setVideo_url(sql_name);
				
				boolean isSave = new VideoService().addVideo(vap);
				
				/*数据写入数据库*/
				
				
				response.sendRedirect("../about.jsp?user_id="+request.getSession().getAttribute("user_id"));
				
				
			}
			
		}
		
		
	}
	

}
