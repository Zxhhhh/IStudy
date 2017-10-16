package com.why.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.why.dao.DAO4Live;
import com.why.dao.DAO4Study_article;
import com.why.dao.DAO4Video;
import com.why.dto.DTO4Article;
import com.why.dto.DTO4Live;
import com.why.dto.DTO4Video;
import com.why.extraException.BaseException;

import com.why.vo.VO4Article;
import com.why.vo.VO4LiveShowRtn;
import com.why.vo.VO4VideoShowRtn;

public class SearchService {

	public List<VO4LiveShowRtn> queryLiveByKeyword(String keyword) {
		// TODO Auto-generated method stub
		
		if(keyword!=null){
	
		List<DTO4Live> dtolist = new DAO4Live().queryLiveByKeyword(keyword);
		List<VO4LiveShowRtn> volist = new ArrayList<VO4LiveShowRtn>();

			for(DTO4Live list:dtolist){
				VO4LiveShowRtn voLiveShowRtn = new VO4LiveShowRtn();
				voLiveShowRtn.setLive_id(Integer.toString(list.getLive_id()));
				voLiveShowRtn.setLive_name(list.getLive_name());
				voLiveShowRtn.setLive_author(list.getLive_author());
				voLiveShowRtn.setLive_time((new SimpleDateFormat("yyyy年MM月dd日")).format(list.getLive_time()));
				voLiveShowRtn.setLive_type(Integer.toString(list.getLive_type()));
				voLiveShowRtn.setLive_visitor(Integer.toString(list.getLive_visitor()));
				voLiveShowRtn.setLive_content(list.getLive_content());
				voLiveShowRtn.setLive_gift(Integer.toString(list.getLive_gift()));
				voLiveShowRtn.setLive_pic(list.getLive_pic());
				voLiveShowRtn.setLive_authorintroduction(list.getLive_authorintroduction());
				volist.add(voLiveShowRtn);
				System.out.println(voLiveShowRtn);
			}
		return volist;
		}
	
		else{
			
			throw new BaseException("非法操作!查询参数null");
			
			
		}
	}

	public List<VO4Article> queryArticleByKeyword(String keyword){
		if(keyword!=null){
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findArticleByKeyword(keyword);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
		}
		else{
			
			throw new BaseException("非法操作!查询参数null");
			
		}
	
	}
	
	public List<VO4VideoShowRtn> queryVideoByKeyword(String keyword) {

		List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();
		List<DTO4Video> dto_videoList = new DAO4Video().queryVideoByKeywory(keyword);

		if (dto_videoList.size() != 0) {
			for (DTO4Video dto_video : dto_videoList) {

				VO4VideoShowRtn vsr = new VO4VideoShowRtn();
				vsr.setVideo_author(dto_video.getVideo_author());
				vsr.setVideo_content(dto_video.getVideo_content());
				vsr.setVideo_count(String.valueOf(dto_video.getVideo_count()));
				vsr.setVideo_id(String.valueOf(dto_video.getVideo_id()));
				vsr.setVideo_level(String.valueOf(dto_video.getVideo_level()));
				vsr.setVideo_name(dto_video.getVideo_name());
				vsr.setVideo_summary(dto_video.getVideo_summary());
				vsr.setVideo_time(dto_video.getVideo_time());
				vsr.setVideo_type(String.valueOf(dto_video.getVideo_type()));
				vsr.setVideo_pic(dto_video.getVideo_pic());

				vsrList.add(vsr);
			}
		}
		
		return vsrList;

	}
	
}
