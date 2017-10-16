package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;


import com.why.dto.DTO4User;
import com.why.dto.DTO4Video;
import com.why.extraException.BaseException;
import com.why.service.VideoService;
import com.why.util.JDBCPoolUtil;
import com.why.util.SplitPageUtil;

public class DAO4Video {
	
	//ͨ查询部分视频
	public List<DTO4Video> queryByOther_small(String colName,String colValue,int limit){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
		
		String sql ="";
		if("video_type".equals(colName)){
		sql = "select * from video where video_type=? limit ?";
		}else if("video_level".equals(colName)){
			sql = "select * from video where video_level=? limit ?";
		}
		try {
			state = connect.prepareStatement(sql);
			//state.setString(1, colName);
			state.setString(1,colValue);
			state.setInt(2, limit);
			result = state.executeQuery();
			while(result.next()){
				DTO4Video dto_video = new DTO4Video();
				dto_video.setVideo_author(result.getString("video_author"));
				dto_video.setVideo_content(result.getString("video_content"));
				dto_video.setVideo_count(result.getInt("video_count"));
				dto_video.setVideo_id(result.getInt("video_id"));
				dto_video.setVideo_level(result.getInt("video_level"));
				dto_video.setVideo_name(result.getString("video_name"));
				dto_video.setVideo_summary(result.getString("video_summary"));
				dto_video.setVideo_time(result.getString("video_time"));
				dto_video.setVideo_type(result.getInt("video_type"));
				dto_video.setVideo_pic(result.getString("video_pic"));
				
				dto_videoList.add(dto_video);
			}
			
			return dto_videoList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	public  List<DTO4Video> queryByOther(String colName,String colValue){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
		
		String sql ="";
		if("video_type".equals(colName)){
		sql = "select * from video where video_type=?";
		}else if("video_level".equals(colName)){
			sql = "select * from video where video_level=?";
		}
		try {
			state = connect.prepareStatement(sql);
			//state.setString(1, colName);
			state.setString(1,colValue);
			result = state.executeQuery();
			while(result.next()){
				DTO4Video dto_video = new DTO4Video();
				dto_video.setVideo_author(result.getString("video_author"));
				dto_video.setVideo_content(result.getString("video_content"));
				dto_video.setVideo_count(result.getInt("video_count"));
				dto_video.setVideo_id(result.getInt("video_id"));
				dto_video.setVideo_level(result.getInt("video_level"));
				dto_video.setVideo_name(result.getString("video_name"));
				dto_video.setVideo_summary(result.getString("video_summary"));
				dto_video.setVideo_time(result.getString("video_time"));
				dto_video.setVideo_type(result.getInt("video_type"));
				dto_video.setVideo_pic(result.getString("video_pic"));
				
				dto_videoList.add(dto_video);
			}
			
			return dto_videoList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	public List<DTO4Video> queryByCount(){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
		
		
		
		String sql ="select * from video order by video_count desc limit 9";
		try {
			state = connect.prepareStatement(sql);
			result = state.executeQuery();
			while(result.next()){
				DTO4Video dto_video = new DTO4Video();
				dto_video.setVideo_author(result.getString("video_author"));
				dto_video.setVideo_content(result.getString("video_content"));
				dto_video.setVideo_count(result.getInt("video_count"));
				dto_video.setVideo_id(result.getInt("video_id"));
				dto_video.setVideo_level(result.getInt("video_level"));
				dto_video.setVideo_name(result.getString("video_name"));
				dto_video.setVideo_summary(result.getString("video_summary"));
				dto_video.setVideo_time(result.getString("video_time"));
				dto_video.setVideo_type(result.getInt("video_type"));
				dto_video.setVideo_pic(result.getString("video_pic"));
				
				dto_videoList.add(dto_video);
			}
			return dto_videoList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
		
		public DTO4Video queryById(String video_id){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		DTO4Video dto_video = new DTO4Video();
		
		String sql ="select * from video where video_id=?";
		
		try {
			state = connect.prepareStatement(sql);
			state.setString(1, video_id);
			result = state.executeQuery();
			if(result.next()){
				dto_video.setVideo_author(result.getString("video_author"));
				dto_video.setVideo_content(result.getString("video_content"));
				dto_video.setVideo_count(result.getInt("video_count"));
				dto_video.setVideo_id(result.getInt("video_id"));
				dto_video.setVideo_level(result.getInt("video_level"));
				dto_video.setVideo_name(result.getString("video_name"));
				dto_video.setVideo_summary(result.getString("video_summary"));
				dto_video.setVideo_time(result.getString("video_time"));
				dto_video.setVideo_type(result.getInt("video_type"));
				dto_video.setVideo_pic(result.getString("video_pic"));
				dto_video.setVideo_url(result.getString("video_url"));
			}
			return dto_video;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}

		//查询全部
		public List<DTO4Video> queryAll(){
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			
			List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
			
			
			String sql ="select * from video";
			try {
				state = connect.prepareStatement(sql);
				result = state.executeQuery();
				while(result.next()){
					DTO4Video dto_video = new DTO4Video();
					dto_video.setVideo_author(result.getString("video_author"));
					dto_video.setVideo_content(result.getString("video_content"));
					dto_video.setVideo_count(result.getInt("video_count"));
					dto_video.setVideo_id(result.getInt("video_id"));
					dto_video.setVideo_level(result.getInt("video_level"));
					dto_video.setVideo_name(result.getString("video_name"));
					dto_video.setVideo_summary(result.getString("video_summary"));
					dto_video.setVideo_time(result.getString("video_time"));
					dto_video.setVideo_type(result.getInt("video_type"));
					dto_video.setVideo_pic(result.getString("video_pic"));
					
					dto_videoList.add(dto_video);
				}
				return dto_videoList;
				
			} catch (SQLException e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			}finally{
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
		
		
		public List<DTO4Video> queryAllLimit(){
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			
			List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
			
			
			String sql ="select * from video limit 6";
			try {
				state = connect.prepareStatement(sql);
				result = state.executeQuery();
				while(result.next()){
					DTO4Video dto_video = new DTO4Video();
					dto_video.setVideo_author(result.getString("video_author"));
					dto_video.setVideo_content(result.getString("video_content"));
					dto_video.setVideo_count(result.getInt("video_count"));
					dto_video.setVideo_id(result.getInt("video_id"));
					dto_video.setVideo_level(result.getInt("video_level"));
					dto_video.setVideo_name(result.getString("video_name"));
					dto_video.setVideo_summary(result.getString("video_summary"));
					dto_video.setVideo_time(result.getString("video_time"));
					dto_video.setVideo_type(result.getInt("video_type"));
					dto_video.setVideo_pic(result.getString("video_pic"));
					
					dto_videoList.add(dto_video);
				}
				return dto_videoList;
				
			} catch (SQLException e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			}finally{
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}	
		
		
		public List<DTO4Video> queryVideoByKeywory(String keyword){
			
			Connection connect = JDBCPoolUtil.getConnection();
			Statement state = null;
			ResultSet result = null;
			
			List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
			
			
			String sql ="select * from video where video_name like '%"+keyword+"%'";
			try {
				state = connect.createStatement();
				result = state.executeQuery(sql);
				while(result.next()){
					DTO4Video dto_video = new DTO4Video();
					dto_video.setVideo_author(result.getString("video_author"));
					dto_video.setVideo_content(result.getString("video_content"));
					dto_video.setVideo_count(result.getInt("video_count"));
					dto_video.setVideo_id(result.getInt("video_id"));
					dto_video.setVideo_level(result.getInt("video_level"));
					dto_video.setVideo_name(result.getString("video_name"));
					dto_video.setVideo_summary(result.getString("video_summary"));
					dto_video.setVideo_time(result.getString("video_time"));
					dto_video.setVideo_type(result.getInt("video_type"));
					dto_video.setVideo_pic(result.getString("video_pic"));
					
					dto_videoList.add(dto_video);
				}
				return dto_videoList;
				
			} catch (SQLException e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			}finally{
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
		
		//计算Video表的总记录数.用于分页
		public int countRows(){
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			 int totalRows=0;
			
			String sql ="select count(*) from video";
			try {
				state = connect.prepareStatement(sql);
				result = state.executeQuery();
				if(result.next()){
				 totalRows = result.getInt(1);
				}
				return totalRows;
			} catch (Exception e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			}finally{
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
		
		//运用分页的查询
		public List<DTO4Video> queryByPage(SplitPageUtil spu){
			
			int pageStartRow = spu.pageStartRow; //当前的页数
			int pageSize = spu.pageSize; //每页分多少条记录
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			
			List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
			
			try {
				String sql ="select * from Video limit ?,?";
				state = connect.prepareStatement(sql);
				state.setInt(1, pageStartRow);
				state.setInt(2, pageSize);
				result = state.executeQuery();
				while(result.next()){
					
					
					DTO4Video dto_video = new DTO4Video();
					dto_video.setVideo_author(result.getString("video_author"));
					dto_video.setVideo_content(result.getString("video_content"));
					dto_video.setVideo_count(result.getInt("video_count"));
					dto_video.setVideo_id(result.getInt("video_id"));
					dto_video.setVideo_level(result.getInt("video_level"));
					dto_video.setVideo_name(result.getString("video_name"));
					dto_video.setVideo_summary(result.getString("video_summary"));
					dto_video.setVideo_time(result.getString("video_time"));
					dto_video.setVideo_type(result.getInt("video_type"));
					dto_video.setVideo_pic(result.getString("video_pic"));
					
					dto_videoList.add(dto_video);
				}
				return dto_videoList;
				
			} catch (Exception e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			}finally{
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
		
		/*根据作者名查找视频*/
		public List<DTO4Video> queryVideoByAuthor(String video_author){
		
			List<DTO4Video> dto_videoList = new ArrayList<DTO4Video>();
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			
			String sql = "select * from Video where video_author=?";
			try{
				state = connect.prepareStatement(sql);
				state.setString(1, video_author);
				
				result = state.executeQuery();
				while(result.next()){
					DTO4Video dto_video = new DTO4Video();
					dto_video.setVideo_author(result.getString("video_author"));
					dto_video.setVideo_content(result.getString("video_content"));
					dto_video.setVideo_count(result.getInt("video_count"));
					dto_video.setVideo_id(result.getInt("video_id"));
					dto_video.setVideo_level(result.getInt("video_level"));
					dto_video.setVideo_name(result.getString("video_name"));
					dto_video.setVideo_summary(result.getString("video_summary"));
					dto_video.setVideo_time(result.getString("video_time"));
					dto_video.setVideo_type(result.getInt("video_type"));
					dto_video.setVideo_pic(result.getString("video_pic"));
					
					dto_videoList.add(dto_video);
				}
				
				System.out.println(dto_videoList.size());
				return dto_videoList;
				
			}catch (Exception e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，稍后重试");
			}finally{
				
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
				
			}
		}
		
		//插入一条数据
		public boolean insertVideo(DTO4Video dto_Video){
			
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			boolean isSuccess;
			
			String sql = "insert into video(video_name,video_type,video_time,video_author,video_summary,video_content,video_count,video_level,video_pic,video_url) " +
					"values(?,?,?,?,?,?,?,?,?,?)";
			
			try {
				state = connect.prepareStatement(sql);
				state.setString(1, dto_Video.getVideo_name());
				state.setInt(2, dto_Video.getVideo_type());
				state.setString(3, dto_Video.getVideo_time());
				state.setString(4, dto_Video.getVideo_author());
				state.setString(5, dto_Video.getVideo_summary());
				state.setString(6, dto_Video.getVideo_content());
				state.setInt(7, dto_Video.getVideo_count());
				state.setInt(8, dto_Video.getVideo_level());
				state.setString(9, dto_Video.getVideo_pic());
				state.setString(10, dto_Video.getVideo_url());
				
				int i = state.executeUpdate();
				
				if(i!=0){
					isSuccess = true;
				}else{
					isSuccess = false;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				throw new BaseException("数据库出错，请稍后重试");
			}finally{
				
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
				
			}
			
			return isSuccess;
			
		}
		
		public static void main(String[] args) {
			
				boolean flag = new DAO4Video().insertVideo(new DTO4Video(0, "me", 1, "2017-04-11", "Zxhhhh", "111", "啊哈哈哈", 0, 2,"/111/44/55", "D://111"));
				System.out.println(flag);
				
		}
		
}
