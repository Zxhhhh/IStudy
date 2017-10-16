package com.why.vo;

public class VO4VideoTopShowRtn {
	
	String video_id;
	String video_name;
	String video_count;
	
	public VO4VideoTopShowRtn() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4VideoTopShowRtn(String video_id, String video_name,
			String video_count) {
		super();
		this.video_id = video_id;
		this.video_name = video_name;
		this.video_count = video_count;
	}

	public String getVideo_id() {
		return video_id;
	}

	public void setVideo_id(String video_id) {
		this.video_id = video_id;
	}

	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}

	public String getVideo_count() {
		return video_count;
	}

	public void setVideo_count(String video_count) {
		this.video_count = video_count;
	}
	
	

}
