package com.why.vo;

public class VO4UserFollowDeleteParam {
	
	String myid;
	String otherid;
	
	public VO4UserFollowDeleteParam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4UserFollowDeleteParam(String myid, String otherid) {
		super();
		this.myid = myid;
		this.otherid = otherid;
	}

	public String getMyid() {
		return myid;
	}

	public void setMyid(String myid) {
		this.myid = myid;
	}

	public String getOtherid() {
		return otherid;
	}

	public void setOtherid(String otherid) {
		this.otherid = otherid;
	}
	
	

}
