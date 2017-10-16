package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.why.dto.DTO4LiveType;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;


public class DAO4LiveType {
	
	
	public List<DTO4LiveType> queryAllLiveType(){
		String sql = "select * from live_type";//
		List<DTO4LiveType> list = new ArrayList<DTO4LiveType>();	
		list = query(sql);
		return list;
		
	}
	
	public List<DTO4LiveType> queryLiveTypeById(String id){
		String sql = "select * from live_type where type_id = "+id;//
		List<DTO4LiveType> list = new ArrayList<DTO4LiveType>();	
		list = query(sql);
		return list;
		
	}
	
	
	
public List<DTO4LiveType> query(String datasql){
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql=datasql;
	ArrayList<DTO4LiveType> list = new ArrayList<DTO4LiveType>();
	try {
		conn = JDBCPoolUtil.getConnection();
		
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		while (rs.next()) {
			DTO4LiveType livetype = new DTO4LiveType();
			livetype.setType_id(rs.getInt("type_id"));
			livetype.setType_name(rs.getString("type_name"));	
			list.add(livetype);
	
		}
		for(DTO4LiveType livetype :list ){
			System.out.println(livetype);	
		}
		return list;
		
	}catch (Exception e) {

		e.printStackTrace();
		throw new BaseException("��ѯ����");
	} finally {

		JDBCPoolUtil.close(rs);
		JDBCPoolUtil.close(stmt);
		JDBCPoolUtil.close(conn);
	}	
	
	
	
}
	
public String queryLive(String id){
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String t = null;
	String sql="select type_name from where type_id=?";
	ArrayList<DTO4LiveType> list = new ArrayList<DTO4LiveType>();
	try {
		conn = JDBCPoolUtil.getConnection();
		
		stmt = conn.prepareStatement(sql);
		stmt.setInt(1, Integer.parseInt(id));
		rs = stmt.executeQuery();
		while (rs.next()) {
		t=rs.getString("type_name");
		}
		for(DTO4LiveType livetype :list ){
			System.out.println(livetype);	
		} 
		return t;
		
	}catch (Exception e) {

		e.printStackTrace();
		throw new BaseException("��ѯ����");
	} finally {

		JDBCPoolUtil.close(rs);
		JDBCPoolUtil.close(stmt);
		JDBCPoolUtil.close(conn);
	}	
	
	
	
}


}
