package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.why.dto.DTO4Live;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;
import com.why.vo.VO4LiveIdQueryParam;

public class DAO4Live {
	
	
	
	
	
public ArrayList<DTO4Live> queryAllLive(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<DTO4Live> list = new ArrayList<DTO4Live>();
		
		
		
		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "select * from live";//
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				DTO4Live live = new DTO4Live();
				
				live.setLive_id(rs.getInt("live_id"));
				live.setLive_author(rs.getString("live_author"));
				live.setLive_name(rs.getString("live_name"));
				live.setLive_type(rs.getInt("live_type"));
				live.setLive_content(rs.getString("live_content"));
				live.setLive_time(rs.getDate("live_time"));
				live.setLive_visitor(rs.getInt("live_visitor"));
				live.setLive_gift(rs.getInt("live_gift"));
				live.setLive_pic((rs.getString("live_pic")));
				live.setLive_authorintroduction(rs.getString("live_authorintroduction"));
				list.add(live);
		
			}
			for(DTO4Live live :list ){
				System.out.println(live);	
			}
			return list;
			
		}catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("≤È—Ø¥ÌŒÛ");
		} finally {

			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}
		
		
	}
	
public ArrayList<DTO4Live> queryByLiveId(VO4LiveIdQueryParam liveid){
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	ArrayList<DTO4Live> list = new ArrayList<DTO4Live>();
	
	
	
	try {
		conn = JDBCPoolUtil.getConnection();
		String sql = "select * from live where live_id =?";//
		stmt = conn.prepareStatement(sql);
		stmt.setInt(1,Integer.parseInt(liveid.getLive_id()));
		rs = stmt.executeQuery();
		while (rs.next()) {
			DTO4Live live = new DTO4Live();
			
			live.setLive_id(rs.getInt("live_id"));
			live.setLive_author(rs.getString("live_author"));
			live.setLive_name(rs.getString("live_name"));
			live.setLive_type(rs.getInt("live_type"));
			live.setLive_content(rs.getString("live_content"));
			live.setLive_time(rs.getDate("live_time"));
			live.setLive_visitor(rs.getInt("live_visitor"));
			live.setLive_gift(rs.getInt("live_gift"));
			live.setLive_pic((rs.getString("live_pic")));
			live.setLive_authorintroduction(rs.getString("live_authorintroduction"));
			list.add(live);
	
		}
	
		return list;
		
	}catch (Exception e) {

		e.printStackTrace();
		throw new BaseException("≤È—Ø¥ÌŒÛ");
	} finally {

		JDBCPoolUtil.close(rs);
		JDBCPoolUtil.close(stmt);
		JDBCPoolUtil.close(conn);
	}
	
	
	
}

	public ArrayList<DTO4Live> queryByVisitor() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<DTO4Live> list = new ArrayList<DTO4Live>();
		
		
		
		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "select * from live order by live_visitor desc";//
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				DTO4Live live = new DTO4Live();
				
				live.setLive_id(rs.getInt("live_id"));
				live.setLive_author(rs.getString("live_author"));
				live.setLive_name(rs.getString("live_name"));
				live.setLive_type(rs.getInt("live_type"));
				live.setLive_content(rs.getString("live_content"));
				live.setLive_time(rs.getDate("live_time"));
				live.setLive_visitor(rs.getInt("live_visitor"));
				live.setLive_gift(rs.getInt("live_gift"));
				live.setLive_pic((rs.getString("live_pic")));
				live.setLive_authorintroduction(rs.getString("live_authorintroduction"));
				list.add(live);
		
			}
		
			return list;
			
		}catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("≤È—Ø¥ÌŒÛ");
		} finally {

			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}
		
		
	}
	
	public ArrayList<DTO4Live> queryByLiveType(int live_type) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<DTO4Live> list = new ArrayList<DTO4Live>();
		
		
		
		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "select * from live where live_type= ?";//
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, live_type);
			rs = stmt.executeQuery();
			while (rs.next()) {
				DTO4Live live = new DTO4Live();
				
				live.setLive_id(rs.getInt("live_id"));
				live.setLive_author(rs.getString("live_author"));
				live.setLive_name(rs.getString("live_name"));
				live.setLive_type(rs.getInt("live_type"));
				live.setLive_content(rs.getString("live_content"));
				live.setLive_time(rs.getDate("live_time"));
				live.setLive_visitor(rs.getInt("live_visitor"));
				live.setLive_gift(rs.getInt("live_gift"));
				live.setLive_pic((rs.getString("live_pic")));
				live.setLive_authorintroduction(rs.getString("live_authorintroduction"));
				list.add(live);
		
			}
			for(DTO4Live live :list ){
				System.out.println(live);	
			}
			return list;
			
		}catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("≤È—Ø¥ÌŒÛ");
		} finally {

			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}
		
		
	}
	
	public ArrayList<DTO4Live> queryLiveByKeyword(String keyword){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<DTO4Live> list = new ArrayList<DTO4Live>();
		
		
		
		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "select * from live where live_name like ? || live_author like ? || live_content like ?";//
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%"+keyword+"%");
			stmt.setString(2, "%"+keyword+"%");
			stmt.setString(3, "%"+keyword+"%");
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				DTO4Live live = new DTO4Live();
				live.setLive_id(rs.getInt("live_id"));
				live.setLive_author(rs.getString("live_author"));
				live.setLive_name(rs.getString("live_name"));
				live.setLive_type(rs.getInt("live_type"));
				live.setLive_content(rs.getString("live_content"));
				live.setLive_time(rs.getDate("live_time"));
				live.setLive_visitor(rs.getInt("live_visitor"));
				live.setLive_gift(rs.getInt("live_gift"));
				live.setLive_pic((rs.getString("live_pic")));
				live.setLive_authorintroduction(rs.getString("live_authorintroduction"));
				list.add(live);
		
			}
			for(DTO4Live live :list ){
				System.out.println(live);	
			}
			return list;
			
		}catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("≤È—Ø¥ÌŒÛ");
		} finally {

			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}
		
		
	}
	
	
}
