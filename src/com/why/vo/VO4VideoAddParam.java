package com.why.vo;

public class VO4VideoAddParam {

	
	private String video_name;
	private int video_type;
	private String video_time;
	private String video_author;
	private String video_content;
	private int video_level;
	private String video_url;
	
	
	public VO4VideoAddParam() {
		super();
	}

	public VO4VideoAddParam(String video_name, int video_type,
			String video_time, String video_author, String video_content,
			int video_level, String video_url) {
		super();
		this.video_name = video_name;
		this.video_type = video_type;
		this.video_time = video_time;
		this.video_author = video_author;
		this.video_content = video_content;
		this.video_level = video_level;
		this.video_url = video_url;
	}

	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}

	public int getVideo_type() {
		return video_type;
	}

	public void setVideo_type(int video_type) {
		this.video_type = video_type;
	}

	public String getVideo_time() {
		return video_time;
	}

	public void setVideo_time(String video_time) {
		this.video_time = video_time;
	}

	public String getVideo_author() {
		return video_author;
	}

	public void setVideo_author(String video_author) {
		this.video_author = video_author;
	}

	public String getVideo_content() {
		return video_content;
	}

	public void setVideo_content(String video_content) {
		this.video_content = video_content;
	}

	public int getVideo_level() {
		return video_level;
	}

	public void setVideo_level(int video_level) {
		this.video_level = video_level;
	}

	public String getVideo_url() {
		return video_url;
	}

	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
	
	

}
