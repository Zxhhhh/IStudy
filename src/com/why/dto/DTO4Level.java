package com.why.dto;

public class DTO4Level {
	
	int level_id;
	String level_name;
	
	public DTO4Level() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DTO4Level(int level_id, String level_name) {
		super();
		this.level_id = level_id;
		this.level_name = level_name;
	}

	public int getLevel_id() {
		return level_id;
	}

	public void setLevel_id(int level_id) {
		this.level_id = level_id;
	}

	public String getLevel_name() {
		return level_name;
	}

	public void setLevel_name(String level_name) {
		this.level_name = level_name;
	}
	
	

}
