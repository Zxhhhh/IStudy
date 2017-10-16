package com.why.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.why.service.LiveCommentService;
import com.why.vo.VO4LiveCommentAddParam;

public class LiveCommentServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LiveCommentServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String act  = request.getParameter("act");
	
		if("add".equals(act)){
			String live_id=request.getParameter("id");
			request.setAttribute("live_id", live_id);
			if(addComment(request,response).equals("0")){
				
				request.getRequestDispatcher("/div_livecomment.jsp").forward(request, response);
			}else{
				
				request.getRequestDispatcher("/div_livecomment.jsp").forward(request, response);
				
			}
		}
	}

	private String addComment(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String live_id = request.getParameter("live_id");
		String username = request.getParameter("username");
		String comment = request.getParameter("live_comment");
		System.out.println(live_id+":"+username+":"+comment);
		VO4LiveCommentAddParam vo4LiveCommentAddParam = new VO4LiveCommentAddParam();
		vo4LiveCommentAddParam.setComment_liveid(live_id);
		vo4LiveCommentAddParam.setComment_username(username);
		vo4LiveCommentAddParam.setComment_content(comment);
		
		LiveCommentService liveCommentService = new LiveCommentService();
		
		
		if(liveCommentService.addComment(vo4LiveCommentAddParam).equals("0")){
			
			return "0";
			
		}else{
			
			return "1";
			
		}
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
