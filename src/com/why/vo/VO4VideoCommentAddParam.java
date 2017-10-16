package com.why.vo;

public class VO4VideoCommentAddParam {
	
	String comment_videoid;
	String comment_username;
	String comment_content;
	String comment_date;
	
	
	public VO4VideoCommentAddParam() {
		super();
		// TODO Auto-generated constructor stub
	}


	public VO4VideoCommentAddParam(String comment_videoid,
			String comment_username, String comment_content, String comment_date) {
		super();
		this.comment_videoid = comment_videoid;
		this.comment_username = comment_username;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
	}


	public String getComment_videoid() {
		return comment_videoid;
	}


	public void setComment_videoid(String comment_videoid) {
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
