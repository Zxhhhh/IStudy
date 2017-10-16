package com.why.dto;

public class DTO4VideoComment {
	
	int comment_id;
	int comment_videoid;
	String comment_username;
	String comment_content;
	String comment_date;
	
	
	public DTO4VideoComment() {
		super();
		// TODO Auto-generated constructor stub
	}


	public DTO4VideoComment(int comment_id, int comment_videoid,
			String comment_username, String comment_content, String comment_date) {
		super();
		this.comment_id = comment_id;
		this.comment_videoid = comment_videoid;
		this.comment_username = comment_username;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
	}


	public int getComment_id() {
		return comment_id;
	}


	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}


	public int getComment_videoid() {
		return comment_videoid;
	}


	public void setComment_videoid(int comment_videoid) {
		this.comment_videoid = comment_videoid;
	}


	public String getComment_username() {
		return comment_username;
	}


	public void setComment_username(String comment_username) {
		this.comment_username = comment_username;
	}


	public String getComment_content() {
		return comment_content;
	}


	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}


	public String getComment_date() {
		return comment_date;
	}


	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
	
	

}
