package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4Video_type;
import com.why.util.JDBCPoolUtil;
public class DAO4Study_video_type {
	public int createVideo_type(DTO4Video_type DTO4Video_type){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int type_id = DTO4Video_type.getType_id();
			String type_name = DTO4Video_type.getType_name();
			String sql = "insert into Video_type(type_id,type_name) values(?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, type_id);
			ps.setString(2, type_name);
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
	public int removeByPrimaryKey(int type_id){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "delete from Video_type where type_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, type_id);
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
	public int updateVideo_type(DTO4Video_type DTO4Video_type){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int type_id = DTO4Video_type.getType_id();
			String type_name = DTO4Video_type.getType_name();
			String sql = "update Video_type set ,type_name=? where type_id=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, type_name);
			ps.setInt(2, type_id);
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
	public DTO4Video_type findByPrimary(int type_id){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4Video_type DTO4Video_type = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Video_type where type_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, type_id);
			rs = ps.executeQuery();
			if (rs.next()) {
				String type_pic = rs.getString("type_pic");
				String type_name = rs.getString("type_name");
				String type_summary = rs.getString("type_summary");
				DTO4Video_type = new DTO4Video_type(type_id,type_name,type_pic,type_summary);
				return DTO4Video_type;
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
	public List<DTO4Video_type> findAllVideo_type(){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video_type> list = new ArrayList<DTO4Video_type>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Video_type";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int type_id = rs.getInt("type_id");
				String type_name = rs.getString("type_name");
				String type_pic = rs.getString("type_pic");
				String type_summary = rs.getString("type_summary");
				list.add(new DTO4Video_type(type_id,type_name,type_pic,type_summary));
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