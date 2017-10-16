package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4Article_type;
import com.why.util.JDBCPoolUtil;
public class DAO4Study_article_type {
	public int createArticle_type(DTO4Article_type DTO4Article_type){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int type_id = DTO4Article_type.getType_id();
			String type_name = DTO4Article_type.getType_name();
			String sql = "insert into Article_type(type_id,type_name) values(?,?)";
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
			String sql = "delete from Article_type where type_id=?";
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
	public int updateArticle_type(DTO4Article_type DTO4Article_type){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int type_id = DTO4Article_type.getType_id();
			String type_name = DTO4Article_type.getType_name();
			String sql = "update Article_type set ,type_name=? where type_id=?";
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
	public DTO4Article_type findByPrimary(int type_id){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4Article_type DTO4Article_type = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Article_type where type_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, type_id);
			rs = ps.executeQuery();
			if (rs.next()) {

				String type_name = rs.getString("type_name");
				DTO4Article_type = new DTO4Article_type(type_id,type_name);
				return DTO4Article_type;
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
	public List<DTO4Article_type> findAllArticle_type(){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article_type> list = new ArrayList<DTO4Article_type>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Article_type";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int type_id = rs.getInt("type_id");
				String type_name = rs.getString("type_name");
				list.add(new DTO4Article_type(type_id,type_name));
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