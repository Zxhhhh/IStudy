package com.why.service;
/*
 * author:way
 */
import java.util.ArrayList;
import java.util.List;



import com.why.dao.DAO4Study_video_type;


import com.why.dto.DTO4Video_type;
import com.why.vo.VO4VideoTypeShowRtn;

public class Study_video_typeService {
	
	public List<VO4VideoTypeShowRtn> findAllVideo_type() {
		List<VO4VideoTypeShowRtn> listvo = new ArrayList<VO4VideoTypeShowRtn>();
		List<DTO4Video_type> listdto = new DAO4Study_video_type()
				.findAllVideo_type();
		for (DTO4Video_type dto : listdto) {
			int type_id = dto.getType_id();
			String type_name = dto.getType_name();
			String type_pic =  dto.getType_pic();
			String type_summary = dto.getType_summary();
			listvo.add(new VO4VideoTypeShowRtn(String.valueOf(type_id), type_name,type_pic,type_summary));
		}
		return listvo;
	}

	public VO4VideoTypeShowRtn findByPrimary(int type_id){
		DTO4Video_type dto4Video_type = new DAO4Study_video_type().findByPrimary(type_id);
		String type_name = dto4Video_type.getType_name();
		String type_pic =  dto4Video_type.getType_pic();
		String type_summary = dto4Video_type.getType_summary();
		VO4VideoTypeShowRtn vo4Video_type = new VO4VideoTypeShowRtn(String.valueOf(type_id), type_name,type_pic,type_summary);
		return vo4Video_type;
	}
}
