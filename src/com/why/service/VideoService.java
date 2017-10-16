package com.why.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mchange.v2.c3p0.impl.NewPooledConnection;
import com.why.dao.DAO4Level;
import com.why.dao.DAO4Video;
import com.why.dao.DAO4VideoComment;
import com.why.dao.DAO4VideoType;
import com.why.dto.DTO4Level;
import com.why.dto.DTO4Video;
import com.why.dto.DTO4VideoComment;
import com.why.dto.DTO4VideoType;
import com.why.extraException.BaseException;
import com.why.util.SplitPageUtil;
import com.why.vo.VO4LevelShowRtn;
import com.why.vo.VO4VideoAddParam;
import com.why.vo.VO4VideoAndTimeShowRtn;
import com.why.vo.VO4VideoCommentAddParam;
import com.why.vo.VO4VideoCommentShowRtn;
import com.why.vo.VO4VideoShowRtn;
import com.why.vo.VO4VideoTopShowRtn;
import com.why.vo.VO4VideoTypeShowRtn;
/*
 * author:zxh
 */
public class VideoService {

	public List<VO4VideoShowRtn> queryAll() {

		List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();
		List<DTO4Video> dto_videoList = new DAO4Video().queryAll();

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
	
	
	

	public List<VO4VideoTypeShowRtn> queryAllType() {

		List<VO4VideoTypeShowRtn> vtsrList = new ArrayList<VO4VideoTypeShowRtn>();

		List<DTO4VideoType> dto_videoTypeList = new DAO4VideoType().queryAll();

		if (dto_videoTypeList.size() != 0) {
			for (DTO4VideoType dto_videoType : dto_videoTypeList) {
				VO4VideoTypeShowRtn vtsr = new VO4VideoTypeShowRtn(
						String.valueOf(dto_videoType.getType_id()),
						dto_videoType.getType_name());
				vtsrList.add(vtsr);
			}
		}
		return vtsrList;
	}

	public List<VO4LevelShowRtn> queryAllLevel() {

		List<VO4LevelShowRtn> lsrList = new ArrayList<VO4LevelShowRtn>();

		List<DTO4Level> dto_levelList = new DAO4Level().queryAll();

		if (dto_levelList.size() != 0) {
			for (DTO4Level dto_level : dto_levelList) {
				VO4LevelShowRtn vtsr = new VO4LevelShowRtn(
						String.valueOf(dto_level.getLevel_id()),
						dto_level.getLevel_name());
				lsrList.add(vtsr);
			}
		}
		return lsrList;
	}

	// public List<VO4VideoShowRtn> queryByType_small(String video_type) {
	//
	// List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();
	//
	// List<DTO4Video> dto_videoList = new DAO4Video().queryByOther_small(
	// "video_type", video_type,6);
	//
	// if (dto_videoList.size() != 0) {
	// for (DTO4Video dto_video : dto_videoList) {
	// VO4VideoShowRtn vsr = new VO4VideoShowRtn();
	//
	// vsr.setVideo_author(dto_video.getVideo_author());
	// vsr.setVideo_content(dto_video.getVideo_content());
	// vsr.setVideo_count(String.valueOf(dto_video.getVideo_count()));
	// vsr.setVideo_id(String.valueOf(dto_video.getVideo_id()));
	// vsr.setVideo_level(String.valueOf(dto_video.getVideo_level()));
	// vsr.setVideo_name(dto_video.getVideo_name());
	// vsr.setVideo_summary(dto_video.getVideo_summary());
	// vsr.setVideo_time(dto_video.getVideo_time());
	// vsr.setVideo_type(dto_video.getVideo_type());
	// vsr.setVideo_pic(dto_video.getVideo_pic());
	//
	// vsrList.add(vsr);
	//
	// }
	// }
	// return vsrList;
	// }

	public List<VO4VideoShowRtn> queryByOthers_small(String type, String value) {
		List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();

		if (type != null && value != null) {

			List<DTO4Video> dto_videoList = null;
			if ("level".equals(type)) {
				dto_videoList = new DAO4Video().queryByOther_small(
						"video_level", value, 6);
			} else if ("video_type".equals(type)) {
				dto_videoList = new DAO4Video().queryByOther_small(
						"video_type", value, 6);
			}

			if (dto_videoList.size() != 0) {
				for (DTO4Video dto_video : dto_videoList) {
					VO4VideoShowRtn vsr = new VO4VideoShowRtn();

					vsr.setVideo_author(dto_video.getVideo_author());
					vsr.setVideo_content(dto_video.getVideo_content());
					vsr.setVideo_count(String.valueOf(dto_video
							.getVideo_count()));
					vsr.setVideo_id(String.valueOf(dto_video.getVideo_id()));
					vsr.setVideo_level(String.valueOf(dto_video
							.getVideo_level()));
					vsr.setVideo_name(dto_video.getVideo_name());
					vsr.setVideo_summary(dto_video.getVideo_summary());
					vsr.setVideo_time(dto_video.getVideo_time());
					vsr.setVideo_type(String.valueOf(dto_video.getVideo_type()));
					vsr.setVideo_pic(dto_video.getVideo_pic());

					vsrList.add(vsr);
				}
			}

			return vsrList;
		} else {
			throw new BaseException("非法操作，参数不能为空");
		}
	}

	public List<VO4VideoShowRtn> queryByOthers(String type, String value) {
		List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();

		List<DTO4Video> dto_videoList = null;
		if ("level".equals(type)) {
			dto_videoList = new DAO4Video().queryByOther("video_level", value);
		} else if ("video_type".equals(type)) {
			dto_videoList = new DAO4Video().queryByOther("video_type", value);
		}

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

	public VO4LevelShowRtn queryLevelById(String level_id) {

		VO4LevelShowRtn lsr = new VO4LevelShowRtn();
		if (level_id != null) {

			DTO4Level dto_level = new DAO4Level().queryById(level_id);

			lsr.setLevel_id(String.valueOf(dto_level.getLevel_id()));
			lsr.setLevel_name(dto_level.getLevel_name());
		}

		return lsr;
	}

	public VO4VideoTypeShowRtn queryVideoTypeById(String type_id) {

		VO4VideoTypeShowRtn vtsr = new VO4VideoTypeShowRtn();
		if (type_id != null) {

			DTO4VideoType dto_videoType = new DAO4VideoType()
					.queryById(type_id);

			vtsr.setType_id(String.valueOf(dto_videoType.getType_id()));
			vtsr.setType_name(dto_videoType.getType_name());
		}

		return vtsr;
	}

	public List<VO4VideoTopShowRtn> queryVideoTop() {

		List<VO4VideoTopShowRtn> vtsrList = new ArrayList<VO4VideoTopShowRtn>();

		List<DTO4Video> dto_videoList = new DAO4Video().queryByCount();
		if (dto_videoList.size() != 0) {
			for (DTO4Video dto_video : dto_videoList) {
				VO4VideoTopShowRtn vtsr = new VO4VideoTopShowRtn();

				vtsr.setVideo_id(String.valueOf(dto_video.getVideo_id()));
				vtsr.setVideo_name(dto_video.getVideo_name());
				vtsr.setVideo_count(String.valueOf(dto_video.getVideo_count()));

				vtsrList.add(vtsr);
			}
		}
		return vtsrList;
	}

	public VO4VideoShowRtn queryById(String video_id) {

		VO4VideoShowRtn vsr = new VO4VideoShowRtn();

		DTO4Video dto_video = new DAO4Video().queryById(video_id);
		if (dto_video != null) {
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
			vsr.setVideo_url(dto_video.getVideo_url());
		}

		return vsr;
	}
	
	//计算Video表的总记录数
	public int countRows(){
		return new DAO4Video().countRows();
	}

	public VO4VideoAndTimeShowRtn queryByTime(){
	   
	   List<VO4VideoShowRtn> vsrList = queryAll();
	   Map<String,List<VO4VideoShowRtn>> yearMap = new HashMap<String, List<VO4VideoShowRtn>>();
	   
	   List<String> yearList = new ArrayList<String>();
	   for(VO4VideoShowRtn vsr:vsrList){
		   String year = vsr.getVideo_time().substring(0,4);
		   if(!yearList.contains(year)){
			   yearList.add(year);
		   }
	   }
	   
	   for(String year:yearList){
		   int i=0;
		   List<VO4VideoShowRtn> vsrYearList = new ArrayList<VO4VideoShowRtn>();
		   for(VO4VideoShowRtn vsr:vsrList){
			   if(year.equals(vsr.getVideo_time().substring(0,4))){
				   vsrYearList.add(vsr);
				   i++;
				   if(i>=6){break;}
			   }
		   }
		   yearMap.put(year,vsrYearList);

	   }
	   
	   VO4VideoAndTimeShowRtn vatsr = new VO4VideoAndTimeShowRtn(yearList,yearMap);
	   return vatsr;
   }
	
	public List<VO4VideoCommentShowRtn> queryVideoCommentById(String comment_videoid){
		if(comment_videoid!=null){
			List<VO4VideoCommentShowRtn> vcsrList = new ArrayList<VO4VideoCommentShowRtn>();
			List<DTO4VideoComment> dto_videoCommentList = new DAO4VideoComment().queryByVideoid(comment_videoid);
			
			if(dto_videoCommentList.size()!=0){
				for(DTO4VideoComment dto_videoComment:dto_videoCommentList){
					VO4VideoCommentShowRtn vcsr = new VO4VideoCommentShowRtn();
					
					vcsr.setComment_content(dto_videoComment.getComment_content());
					vcsr.setComment_date(dto_videoComment.getComment_date());
					vcsr.setComment_id(String.valueOf(dto_videoComment.getComment_id()));
					vcsr.setComment_username(dto_videoComment.getComment_username());
					vcsr.setComment_videoid(String.valueOf(dto_videoComment.getComment_videoid()));
					
					vcsrList.add(vcsr);
				}
			}
			return vcsrList;
			
		}else{
			throw new BaseException("非法操作，参数不能为空");
		}
	}
	
	
	public String add_videoComment(VO4VideoCommentAddParam vcap){
		
		DTO4VideoComment dto_videoComment = new DTO4VideoComment();
		
		String comment_videoid = vcap.getComment_videoid();
		String comment_content = vcap.getComment_content();
		String comment_username = vcap.getComment_username();
		String comment_date = vcap.getComment_date();
		
		if(comment_videoid!=null&&comment_content!=null&&comment_username!=null&&comment_date!=null){
			
			dto_videoComment.setComment_content(comment_content);
			dto_videoComment.setComment_date(comment_date);
			dto_videoComment.setComment_username(comment_username);
			dto_videoComment.setComment_videoid(Integer.parseInt(comment_videoid));
			
			if(comment_content.length()<6){
				return "2";
			}else{
			String add_videoCommentRtn = new DAO4VideoComment().addVideoComment(dto_videoComment);
			
			return add_videoCommentRtn;
			}
			
		}else{
			throw new BaseException("非法操作，参数不能为空");
		}
	}
	
	//分页查询的缓存(key是页数)
	private static Map<Integer,List<VO4VideoShowRtn>> video_pageBuffer = new HashMap<Integer, List<VO4VideoShowRtn>>(); 
	
	public List<VO4VideoShowRtn> queryAll_page(SplitPageUtil spu){
		
		List<VO4VideoShowRtn> vsrList = video_pageBuffer.get(spu.currentPage);
				
		if(vsrList==null){
			
			vsrList = new ArrayList<VO4VideoShowRtn>();
			
			List<DTO4Video> dto_videoList = new DAO4Video().queryByPage(spu);
	
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
			
			video_pageBuffer.put(spu.currentPage, vsrList);
			
		}
		return vsrList;
	}
	
	//通过作者查询视频
	public List<VO4VideoShowRtn> queryByAuthor(String video_author){
		
		List<VO4VideoShowRtn> vsrList = new ArrayList<VO4VideoShowRtn>();

		List<DTO4Video> dto_videoList_ = new DAO4Video().queryVideoByAuthor(video_author);
		
		for(DTO4Video dto_video:dto_videoList_){
			if (dto_video != null) {
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
				vsr.setVideo_url(dto_video.getVideo_url());
				
				vsrList.add(vsr);
			}
		}

		return vsrList;
		
		
	}
	
	
	//新增视频
	public boolean addVideo(VO4VideoAddParam vap){
		
		if(vap!=null){
			DTO4Video dto_video = new DTO4Video();
			
			dto_video.setVideo_author(vap.getVideo_author());
			dto_video.setVideo_content(vap.getVideo_content());
			dto_video.setVideo_count(0);
			dto_video.setVideo_level(vap.getVideo_level());
			dto_video.setVideo_name(vap.getVideo_name());
			dto_video.setVideo_pic("images/57ada8480001826b02400180.jpg");
			dto_video.setVideo_summary(vap.getVideo_content().substring(0,7)+"...");
			dto_video.setVideo_time(vap.getVideo_time());
			dto_video.setVideo_type(vap.getVideo_type());
			dto_video.setVideo_url(vap.getVideo_url());
	
			boolean isAdd = new DAO4Video().insertVideo(dto_video);
			
			return isAdd;
		}else{
			throw new BaseException("非法操作，参数不能为空");
		}
	}

}
