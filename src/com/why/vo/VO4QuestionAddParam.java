package com.why.vo;

import java.util.Date;

public class VO4QuestionAddParam {
	private int question_id;
	private int user_id;
	private int live_id;
	private String question_topic;
	private String question_content;
	private Date question_create_time;
	
	
	
	
	public VO4QuestionAddParam() {
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
	public int getLive_id() {
		return live_id;
	}
	public void setLive_id(int live_id) {
		this.live_id = live_id;
	}
	public String getQuestion_topic() {
		return question_topic;
	}
	public void setQuestion_topic(String question_topic) {
		this.question_topic = question_topic;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}
	public Date getQuestion_create_time() {
		return question_create_time;
	}
	public void setQuestion_create_time(Date question_create_time) {
		this.question_create_time = question_create_time;
	}	
	
	
	
	
	
	
}
