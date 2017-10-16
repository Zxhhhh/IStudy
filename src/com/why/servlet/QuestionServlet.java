package com.why.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.why.service.LiveQuestionService;
import com.why.vo.VO4QuestionAddParam;
import com.why.vo.VO4QuestionCommentAddParam;

public class QuestionServlet extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if("add".equals(action)){
			
			
			try {
				insertQuestion(request,response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
		if("addComment".equals(action)){
		
			try {
				insertComment(request,response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		
		
	}

	private void insertComment(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		// TODO Auto-generated method stub
		
		String user_id = request.getParameter("user_id");
		String question_id = request.getParameter("question_id");
		String comment_content = request.getParameter("comment_content");
		String comment_create_time= request.getParameter("comment_create_time");
		SimpleDateFormat format =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		VO4QuestionCommentAddParam vo = new VO4QuestionCommentAddParam();
		vo.setComment_content(comment_content);
		vo.setQuestion_id(Integer.parseInt(question_id));
		vo.setUser_id(Integer.parseInt(user_id));
		vo.setComment_create_time(format.parse(comment_create_time));
	
		String flag =  new LiveQuestionService().InsertComment(vo);
	if("0".equals(flag)){
			
			response.sendRedirect("../live_question_single.jsp?question_id="+question_id);
			
		}
		if("1".equals(flag)){
			response.sendRedirect("../live_question_single.jsp?question_id="+question_id);
		}
		
		
		
		
	}

	private void insertQuestion(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		// TODO Auto-generated method stub
		String live_id = request.getParameter("live_id");
		String question_topic = request.getParameter("question_topic");
		String question_content = request.getParameter("question_content");
		String question_create_time = request.getParameter("question_create_time");
		String user_id = request.getParameter("user_id");
		SimpleDateFormat format =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		VO4QuestionAddParam vo4QuestionAddParam  = new VO4QuestionAddParam();
		vo4QuestionAddParam.setLive_id(Integer.parseInt(live_id));
		vo4QuestionAddParam.setUser_id(Integer.parseInt(user_id));
		vo4QuestionAddParam.setQuestion_topic(question_topic);
		vo4QuestionAddParam.setQuestion_content(question_content);
		vo4QuestionAddParam.setQuestion_create_time(format.parse(question_create_time));
		LiveQuestionService liveQuestionService = new LiveQuestionService();
		
		String flag = liveQuestionService.insertQuestion(vo4QuestionAddParam);
		if("0".equals(flag)){
			
			response.sendRedirect("../live_single.jsp?id="+live_id);
			
		}
		if("1".equals(flag)){
			response.sendRedirect("../live_single.jsp?id="+live_id);
		}
		
		
	}

}
