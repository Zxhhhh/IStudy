package com.why.vo;

public class VO4Video {
	int video_id;
	String video_author;
	String video_content;
	int video_count;
	int video_level ;
	String video_name;
	String video_summary;
	String video_time;
	int video_type;
	String video_pic;
	
	public VO4Video() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4Video(int video_id,String video_name,int video_type,
			String video_time,String video_author,String video_summary,String video_content,
			int video_count,int video_level,String video_pic) {
		super();
		this.video_id = video_id;
		this.video_author = video_author;
		this.video_content = video_content;
		this.video_count = video_count;
		this.video_level = video_level;
		this.video_name = video_name;
		this.video_summary = video_summary;
		this.video_time = video_time;
		this.video_type = video_type;
		this.video_pic = video_pic;
	}

	public int getVideo_id() {
		return video_id;
	}

	public void setVideo_id(int video_id) {
		this.video_id = video_id;
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

	public int getVideo_count() {
		return video_count;
	}

	public void setVideo_count(int video_count) {
		this.video_count = video_count;
	}

	public int getVideo_level() {
		return video_level;
	}

	public void setVideo_level(int video_level) {
		this.video_level = video_level;
	}

	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}

	public String getVideo_summary() {
		return video_summary;
	}

	public void setVideo_summary(String video_summary) {
		this.video_summary = video_summary;
	}

	public String getVideo_time() {
		return video_time;
	}

	public void setVideo_time(String video_time) {
		this.video_time = video_time;
	}

	public int getVideo_type() {
		return video_type;
	}

	public void setVideo_type(int video_type) {
		this.video_type = video_type;
	}

	public String getVideo_pic() {
		return video_pic;
	}

	public void setVideo_pic(String video_pic) {
		this.video_pic = video_pic;
	}
	
	
	
}
