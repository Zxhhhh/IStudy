package com.why.dto;

import java.sql.Date;

public class DTO4LiveComment {
	
	private int comment_id;
	private int comment_liveid;
	private String comment_username;
	private String comment_content;
	private Date comment_date;
	
	
	
	
	public DTO4LiveComment() {
		super();
	}
	public DTO4LiveComment(int comment_id, int comment_liveid,
			String comment_username, String comment_content, Date comment_date) {
		super();
		this.comment_id = comment_id;
		this.comment_liveid = comment_liveid;
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
	public int getComment_liveid() {
		return comment_liveid;
	}
	public void setComment_liveid(int comment_liveid) {
		this.comment_liveid = comment_liveid;
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
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	@Override
	public String toString() {
		return "DTO4LiveComment [comment_username=" + comment_username
				+ ", comment_content=" + comment_content + "]";
	}
	
	
	
	
	
	
	
	
	
}
