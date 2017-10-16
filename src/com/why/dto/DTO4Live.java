package com.why.dto;

import java.sql.Date;
//live±íµÄDTO
public class DTO4Live {
	private int live_id;
	private String live_name;
	private String live_author;
	private Date live_time;
	private int live_type;
	private String live_content;
	private int live_visitor;
	private int live_gift;
	private String live_pic;
	private String live_authorintroduction;
	
	public DTO4Live() {
		super();
	}
	
	
	public DTO4Live(int live_id, String live_name, String live_author,
			Date live_time, int live_type, String live_content,
			int live_visitor, int live_gift) {
		super();
		this.live_id = live_id;
		this.live_name = live_name;
		this.live_author = live_author;
		this.live_time = live_time;
		this.live_type = live_type;
		this.live_content = live_content;
		this.live_visitor = live_visitor;
		this.live_gift = live_gift;
	}
	
	
	public String getLive_pic() {
		return live_pic;
	}


	public void setLive_pic(String live_pic) {
		this.live_pic = live_pic;
	}


	public String getLive_authorintroduction() {
		return live_authorintroduction;
	}


	public void setLive_authorintroduction(String live_authorintroduction) {
		this.live_authorintroduction = live_authorintroduction;
	}


	

	public int getLive_id() {
		return live_id;
	}
	public void setLive_id(int live_id) {
		this.live_id = live_id;
	}
	public String getLive_name() {
		return live_name;
	}
	public void setLive_name(String live_name) {
		this.live_name = live_name;
	}
	public String getLive_author() {
		return live_author;
	}
	public void setLive_author(String live_author) {
		this.live_author = live_author;
	}
	public Date getLive_time() {
		return live_time;
	}
	public void setLive_time(Date live_time) {
		this.live_time = live_time;
	}
	public int getLive_type() {
		return live_type;
	}
	public void setLive_type(int live_type) {
		this.live_type = live_type;
	}
	public String getLive_content() {
		return live_content;
	}
	public void setLive_content(String live_content) {
		this.live_content = live_content;
	}
	public int getLive_visitor() {
		return live_visitor;
	}
	public void setLive_visitor(int live_visitor) {
		this.live_visitor = live_visitor;
	}
	public int getLive_gift() {
		return live_gift;
	}
	public void setLive_gift(int live_gift) {
		this.live_gift = live_gift;
	}


	@Override
	public String toString() {
		return "DTO4Live [live_id=" + live_id + ", live_name=" + live_name
				+ ", live_author=" + live_author + ", live_time=" + live_time
				+ ", live_type=" + live_type + ", live_content=" + live_content
				+ ", live_visitor=" + live_visitor + ", live_gift=" + live_gift
				+ "]";
	}
	
	
	
	
	
	
}
