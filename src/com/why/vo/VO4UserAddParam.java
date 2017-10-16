package com.why.vo;

public class VO4UserAddParam {
	
	String user_name;
	String user_password;
	String user_email;
	String user_passwordConfirm;
	
	public VO4UserAddParam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4UserAddParam(String user_name, String user_password,
			String user_email,String user_passwordConfirm) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_passwordConfirm = user_passwordConfirm;
		this.user_email = user_email;
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

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_passwordConfirm() {
		return user_passwordConfirm;
	}

	public void setUser_passwordConfirm(String user_passwordConfirm) {
		this.user_passwordConfirm = user_passwordConfirm;
	}
	
	

}
