package com.why.dto;

public class DTO4UserComment {
	
	public int comment_id;
	public int comment_from;
	public int comment_to;
	public String comment_date;
	public String comment_content;
	
	public DTO4UserComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DTO4UserComment(int comment_id, int comment_from, int comment_to,
			String comment_date, String comment_content) {
		super();
		this.comment_id = comment_id;
		this.comment_from = comment_from;
		this.comment_to = comment_to;
		this.comment_date = comment_date;
		this.comment_content = comment_content;
	}

	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public int getComment_from() {
		return comment_from;
	}

	public void setComment_from(int comment_from) {
		this.comment_from = comment_from;
	}

	public int getComment_to() {
		return comment_to;
	}

	public void setComment_to(int comment_to) {
		this.comment_to = comment_to;
	}

	public String getComment_date() {
		return comment_date;
	}

	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	
	

}
