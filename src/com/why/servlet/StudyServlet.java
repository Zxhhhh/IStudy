package com.why.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.why.service.StudyService;

public class StudyServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op = request.getParameter("op");
		if(op.equals("join")){
			join(request,response);
		}else if(op.equals("quit")){
			quit(request,response);
		}
		


	}

	private void quit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String userid  =(String) request.getSession().getAttribute("user_id");
		String typeid= (String) request.getParameter("type_id");
		int user_id = Integer.parseInt(userid);
		new StudyService().quitStudy(user_id);
		new StudyService().cleanStudyState(user_id);
		response.sendRedirect("../study_join.jsp?type_id="+typeid);
	}

	private void join(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String userid  =(String) request.getSession().getAttribute("user_id");
		String typeid= (String) request.getParameter("type_id");
		int user_id = Integer.parseInt(userid);
		new StudyService().joinStudy(user_id);
		response.sendRedirect("../study_join.jsp?type_id="+typeid);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	


	

}
