package com.why.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.why.dao.DAO4ArticleComment;
import com.why.service.Study_articleService;
import com.why.vo.VO4ArticleComment;

public class ArticleServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = req.getParameter("op");
		if(op.equals("commentadd")){
			commentAdd(req,resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	public void commentAdd(HttpServletRequest req, HttpServletResponse resp){
		String user_id = (String)req.getSession().getAttribute("user_account");
		String comment_content = req.getParameter("comment_content");
		int article_id =Integer.parseInt(req.getParameter("article_id")) ;
		Date now = new Date();
		SimpleDateFormat sf =  new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = sf.format(now);
		VO4ArticleComment commentvo  = new VO4ArticleComment();
		commentvo.setComment_username(user_id);
		commentvo.setComment_articleid(article_id);
		commentvo.setComment_content(comment_content);
		commentvo.setComment_date(date);
		new Study_articleService().createArticle_commentByarticle_id(commentvo);
		try {
			resp.sendRedirect("../article_single.jsp?article_id="+article_id);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
}
