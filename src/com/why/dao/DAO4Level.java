package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4Level;
import com.why.dto.DTO4VideoType;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;
import com.why.vo.VO4LevelShowRtn;

public class DAO4Level {

	public List<DTO4Level> queryAll(){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4Level> dto_levelList = new ArrayList<DTO4Level>();
		String sql = "select * from level";
		try {
			state = connect.prepareStatement(sql);
			result = state.executeQuery();
			while(result.next()){
				DTO4Level dto_level = new DTO4Level();
				dto_level.setLevel_id(result.getInt("level_id"));
				dto_level.setLevel_name(result.getString("level_name"));
				dto_levelList.add(dto_level);
			}
			return dto_levelList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库出错，请稍后重试或联系管理员");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	
	public DTO4Level queryById(String level_id){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		DTO4Level dto_level = new DTO4Level();
		
		String sql = "select * from level";
		try {
			state = connect.prepareStatement(sql);
			result = state.executeQuery();
			if(result.next()){
			
				dto_level.setLevel_id(result.getInt("level_id"));
				dto_level.setLevel_name(result.getString("level_name"));
			}
			return dto_level;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库出错，请稍后重试或联系管理员");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
		
	}
	
	//way的方法-----------------------------------------------
	public int createLevel(DTO4Level DTO4Level){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int level_id = DTO4Level.getLevel_id();
			String level_name = DTO4Level.getLevel_name();
			String sql = "insert into Level(level_id,level_name) values(?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, level_id);
			ps.setString(2, level_name);
			int flag = ps.executeUpdate();
			if(flag==1){
				return 1;
			}else{
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally{
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	public int removeByPrimaryKey(int level_id){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "delete from Level where level_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, level_id);
			int flag = ps.executeUpdate();
			if(flag==1){
				return 1;
			}else{
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally{
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	
	public int updateLevel(DTO4Level DTO4Level){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int level_id = DTO4Level.getLevel_id();
			String level_name = DTO4Level.getLevel_name();
			String sql = "update Level set ,level_name=? where level_id=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, level_name);
			ps.setInt(2, level_id);
			int flag = ps.executeUpdate();
			if(flag==1){
				return 1;
			}else{
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally{
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	public DTO4Level findByPrimary(int level_id){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4Level DTO4Level = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Level where level_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, level_id);
			rs = ps.executeQuery();
			if (rs.next()) {

				String level_name = rs.getString("level_name");
				DTO4Level = new DTO4Level(level_id,level_name);
				return DTO4Level;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	public List<DTO4Level> findAllLevel(){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Level> list = new ArrayList<DTO4Level>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Level";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int level_id = rs.getInt("level_id");
				String level_name = rs.getString("level_name");
				list.add(new DTO4Level(level_id,level_name));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	
	
}
