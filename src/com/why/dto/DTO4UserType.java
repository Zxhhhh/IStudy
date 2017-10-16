package com.why.dto;

public class DTO4UserType {
	
	int type_id;
	String type_name;
	
	public DTO4UserType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DTO4UserType(int type_id, String type_name) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	
	

}
