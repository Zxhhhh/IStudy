package com.why.vo;

import java.sql.Date;

public class VO4Comment$UserRtn {
	private int comment_id;
	private int question_id;
	private String comment_content;
	private int user_id;
	private Date comment_create_time;
	private String user_name;
	private String user_pic;
	
	public VO4Comment$UserRtn() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pic() {
		return user_pic;
	}

	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}

	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getComment_create_time() {
		return comment_create_time;
	}
	public void setComment_create_time(Date comment_create_time) {
		this.comment_create_time = comment_create_time;
	}
	
}
