package com.why.vo;

public class VO4UserUpdateParam {
	
	String user_name;
	String user_sex;
	String user_age;
	String user_email;
	String user_summary;
	
	public VO4UserUpdateParam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4UserUpdateParam(String user_name, String user_sex,
			String user_age, String user_email, String user_summary) {
		super();
		this.user_name = user_name;
		this.user_sex = user_sex;
		this.user_age = user_age;
		this.user_email = user_email;
		this.user_summary = user_summary;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_age() {
		return user_age;
	}

	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_summary() {
		return user_summary;
	}

	public void setUser_summary(String user_summary) {
		this.user_summary = user_summary;
	}
	
	

}
