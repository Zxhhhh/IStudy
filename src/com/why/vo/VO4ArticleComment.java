package com.why.vo;
/*
 * author:way
 */
public class VO4ArticleComment {

	int comment_id;
	int comment_articleid;
	String comment_username;
	String comment_content;
	String comment_date;
	
	public VO4ArticleComment() {
		super();
	}

	public VO4ArticleComment(int comment_id, int comment_articleid,
			String comment_username, String comment_content, String comment_date) {
		super();
		this.comment_id = comment_id;
		this.comment_articleid = comment_articleid;
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

	public int getComment_articleid() {
		return comment_articleid;
	}

	public void setComment_articleid(int comment_articleid) {
		this.comment_articleid = comment_articleid;
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
