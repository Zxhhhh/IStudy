package com.why.vo;

import java.util.Date;

public class VO4QuestionCommentAddParam {
	private int question_id;
	private int user_id;
	private String comment_content;
	private Date comment_create_time;
	
	
	
	public VO4QuestionCommentAddParam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getQuestion_id() {
		return question_id;
	}
	
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_create_time() {
		return comment_create_time;
	}
	public void setComment_create_time(Date comment_create_time) {
		this.comment_create_time = comment_create_time;
	}
	
	
	
	
	
	
}
