package com.why.dto;

import java.util.Date;

public class DTO4LiveQuestion$user {
	private int question_id;
	private int user_id;
	private int live_id;
	private String question_topic;
	private String question_content;
	private Date question_create_time;
	private String user_name;
	private String user_pic;
	
	
	
	public DTO4LiveQuestion$user() {
		super();
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


	public int getLive_id() {
		return live_id;
	}

	public void setLive_id(int live_id) {
		this.live_id = live_id;
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

	@Override
	public String toString() {
		return "DTO4LiveQuestion [question_id=" + question_id + ", user_id=" + user_id + ", live_id=" + live_id
				+ ", question_topic=" + question_topic + ", question_content=" + question_content
				+ ", question_create_time=" + question_create_time + "]";
	}


	
	
	
	
		
}
