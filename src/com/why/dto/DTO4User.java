package com.why.dto;

public class DTO4User {
	
	int user_id;
	String user_name;
	String user_password;
	String user_age;
	String user_sex;
	String user_email;
	int user_points;
	String user_pic;
	String user_summary;
	String study_statement;
	
	public DTO4User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DTO4User(int user_id, String user_name, String user_password,
			String user_age, String user_sex, String user_email,
			int user_points, String user_pic, String user_summary,String study_statement) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_age = user_age;
		this.user_sex = user_sex;
		this.user_email = user_email;
		this.user_points = user_points;
		this.user_pic = user_pic;
		this.user_summary = user_summary;
		this.study_statement = study_statement;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_age() {
		return user_age;
	}

	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public int getUser_points() {
		return user_points;
	}

	public void setUser_points(int user_points) {
		this.user_points = user_points;
	}

	public String getUser_pic() {
		return user_pic;
	}

	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}

	public String getUser_summary() {
		return user_summary;
	}

	public void setUser_summary(String user_summary) {
		this.user_summary = user_summary;
	}

	public String getStudy_statement() {
		return study_statement;
	}

	public void setStudy_statement(String study_statement) {
		this.study_statement = study_statement;
	}
	
	
	

}
