package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4User;
import com.why.dto.DTO4VideoType;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;

public class DAO4VideoType {
	
	public List<DTO4VideoType> queryAll(){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4VideoType> dto_videoTypeList = new ArrayList<DTO4VideoType>();
		String sql = "select * from video_type";
		try {
			state = connect.prepareStatement(sql);
			result = state.executeQuery();
			while(result.next()){
				DTO4VideoType dto_videoType = new DTO4VideoType();
				dto_videoType.setType_id(result.getInt("type_id"));
				dto_videoType.setType_name(result.getString("type_name"));
				dto_videoTypeList.add(dto_videoType);
			}
			return dto_videoTypeList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库出错，请稍后重试或联系管理员");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	public DTO4VideoType queryById(String video_type){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		DTO4VideoType dto_videoType = new DTO4VideoType();
		String sql = "select * from video_type";
		try {
			state = connect.prepareStatement(sql);
			result = state.executeQuery();
			while(result.next()){
				
				dto_videoType.setType_id(result.getInt("type_id"));
				dto_videoType.setType_name(result.getString("type_name"));
			}
			return dto_videoType;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库出错，请稍后重试或联系管理员");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
}
