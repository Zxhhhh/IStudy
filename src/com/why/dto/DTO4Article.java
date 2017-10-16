package com.why.dto;

public class DTO4Article {
	private int article_id;
	private String article_name;
	private String article_author;
	private String article_content;
	private int article_count;
	private int article_type;
	private String article_summary;
	private String article_time;
	private int article_level;
	private String article_pic;
	public DTO4Article() {
		super();
	}

	public DTO4Article(int article_id, String article_name,
			String article_author, String article_content, int article_count,
			int article_type, String article_summary, String article_time,
			int article_level,String article_pic) {
		super();
		this.article_id = article_id;
		this.article_name = article_name;
		this.article_author = article_author;
		this.article_content = article_content;
		this.article_count = article_count;
		this.article_type = article_type;
		this.article_summary = article_summary;
		this.article_time = article_time;
		this.article_level = article_level;
		this.article_pic = article_pic;
	}
	
	
	public String getArticle_pic() {
		return article_pic;
	}

	public void setArticle_pic(String article_pic) {
		this.article_pic = article_pic;
	}

	public int getArticle_id() {
		return article_id;
	}

	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}

	public String getArticle_name() {
		return article_name;
	}

	public void setArticle_name(String article_name) {
		this.article_name = article_name;
	}

	public String getArticle_author() {
		return article_author;
	}

	public void setArticle_author(String article_author) {
		this.article_author = article_author;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public int getArticle_count() {
		return article_count;
	}

	public void setArticle_count(int article_count) {
		this.article_count = article_count;
	}

	public int getArticle_type() {
		return article_type;
	}

	public void setArticle_type(int article_type) {
		this.article_type = article_type;
	}

	public String getArticle_summary() {
		return article_summary;
	}

	public void setArticle_summary(String article_summary) {
		this.article_summary = article_summary;
	}

	public String getArticle_time() {
		return article_time;
	}

	public void setArticle_time(String article_time) {
		this.article_time = article_time;
	}

	public int getArticle_level() {
		return article_level;
	}

	public void setArticle_level(int article_level) {
		this.article_level = article_level;
	}
	
	
	
}
