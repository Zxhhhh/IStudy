package com.why.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.why.dao.DAO4Study_video;
import com.why.dao.DAODaily_recommend;

import com.why.dto.DTO4Video;

import com.why.vo.VO4Article;
import com.why.vo.VO4Video;
/*
 * author:way
 */
public class Study_videoService {
	public VO4Video findByPrimary(int video_id){
		VO4Video vo = new VO4Video();
		DTO4Video dto = new DAO4Study_video().findByPrimary(video_id);
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			vo =new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic);
		
		return vo;
	}
	
	
	
	
	
	public List<VO4Video> findAllVideo() {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video().findAllVideo();
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}

	public List<VO4Video> findTopTwoVideoByType(int video_type) {

		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findTopTwoVideoByType(video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}

	
	public List<VO4Video> findTopThreeVideoByType(int video_type) {

		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findTopThreeVideoByType(video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}
	
	
	
	
	public List<VO4Video> findTopSixVideoByType(int video_type) {

		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findTopSixVideoByType(video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}
	
	
	
	public List<VO4Video> findAllVideoByTime(int video_type) {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findAllVideoByTime(video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			// int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}

	public List<VO4Video> findAllVideoByCount(int video_type) {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findAllVideoByCount(video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			// int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}

	public List<VO4Video> findFiveVideoByCount() {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findFiveVideoByCount();
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			int video_level = dto.getVideo_level();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			 int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}
	
	public List<VO4Video> findVideoByLevelCount(int video_level, int video_type) {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video()
				.findVideoByLevelByCount(video_level, video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			// int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}

	public List<VO4Video> findVideoByLevelTime(int video_level, int video_type) {
		List<VO4Video> listvo = new ArrayList<VO4Video>();
		List<DTO4Video> listdto = new DAO4Study_video().findVideoByLevelByTime(
				video_level, video_type);
		for (DTO4Video dto : listdto) {
			int video_id = dto.getVideo_id();
			String video_author = dto.getVideo_author();
			String video_content = dto.getVideo_content();
			int video_count = dto.getVideo_count();
			String video_name = dto.getVideo_name();
			String video_summary = dto.getVideo_summary();
			String video_time = dto.getVideo_time();
			// int video_type = dto.getVideo_type();
			String video_pic = dto.getVideo_pic();
			listvo.add(new VO4Video(video_id, video_name, video_type,
					video_time, video_author, video_summary, video_content,
					video_count, video_level, video_pic));
		}
		return listvo;
	}
	
	
	public int findVideoCountByTypeId(int type_id){
		return new DAO4Study_video().findVideoCountByTypeId(type_id);
	}
	
	
	public List<VO4Video> video_recommend_five(int user_id){
		List<VO4Video> list = new ArrayList<VO4Video>();

		if(new DAODaily_recommend().UserhabitISNull(user_id)){
			return list = findFiveVideoByCount();
		}
		List<Map.Entry<Integer,Double>> list_entry = new DAODaily_recommend().video_recommend(user_id);
		if(list_entry!=null&&list_entry.size()>0){
			for (int i=0;i<5;i++) {
				Entry<Integer, Double> entry = list_entry.get(i);
				VO4Video vo  = findByPrimary(entry.getKey());
				System.out.println("===="+entry.getKey());
				list.add(vo);
			}
			return list;
		}else{
			return list = findFiveVideoByCount();
		}
	}
}
