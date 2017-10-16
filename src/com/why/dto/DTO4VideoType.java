package com.why.dto;

public class DTO4VideoType {

	private int type_id;
	private String type_name;
	private String type_pic;
	private String type_summary;

	public DTO4VideoType() {
		super();
	}

	public DTO4VideoType(int type_id, String type_name, String type_pic) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.type_pic = type_pic;
	}

	public DTO4VideoType(int type_id, String type_name, String type_pic,
			String type_summary) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.type_pic = type_pic;
		this.type_summary = type_summary;
	}

	public String getType_summary() {
		return type_summary;
	}

	public void setType_summary(String type_summary) {
		this.type_summary = type_summary;
	}

	public String getType_pic() {
		return type_pic;
	}

	public void setType_pic(String type_pic) {
		this.type_pic = type_pic;
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
