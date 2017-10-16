package com.why.vo;

public class VO4UserLoginParam {
	
	String user_name;
	String user_password;
	String user_checkCode;
	String randomCode;
	
	
	public VO4UserLoginParam() {
		super();
		// TODO Auto-generated constructor stub
	}


	public VO4UserLoginParam(String user_name, String user_password,
			String user_checkCode, String randomCode) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_checkCode = user_checkCode;
		this.randomCode = randomCode;
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


	public String getUser_checkCode() {
		return user_checkCode;
	}


	public void setUser_checkCode(String user_checkCode) {
		this.user_checkCode = user_checkCode;
	}


	public String getRandomCode() {
		return randomCode;
	}


	public void setRandomCode(String randomCode) {
		this.randomCode = randomCode;
	}
	
	

}
