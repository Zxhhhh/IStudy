package com.why.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/*
 * ��VOװ�ظ��������е�Video
 */
import java.util.Map;

public class VO4VideoAndTimeShowRtn {
	
	List<String> videoYearList = new ArrayList<String>();
	Map<String,List<VO4VideoShowRtn>> videoYearMap = new HashMap<String, List<VO4VideoShowRtn>>();
	
	public VO4VideoAndTimeShowRtn() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO4VideoAndTimeShowRtn(List<String> videoYearList,
			Map<String, List<VO4VideoShowRtn>> videoYearMap) {
		super();
		this.videoYearList = videoYearList;
		this.videoYearMap = videoYearMap;
	}

	public List<String> getVideoYearList() {
		return videoYearList;
	}

	public void setVideoYearList(List<String> videoYearList) {
		this.videoYearList = videoYearList;
	}

	public Map<String, List<VO4VideoShowRtn>> getVideoYearMap() {
		return videoYearMap;
	}

	public void setVideoYearMap(Map<String, List<VO4VideoShowRtn>> videoYearMap) {
		this.videoYearMap = videoYearMap;
	}
	
	
	
	

}
