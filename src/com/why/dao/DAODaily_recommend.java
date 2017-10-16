package com.why.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

import javax.persistence.Temporal;

import org.junit.Test;

import com.why.dto.DTO4ArticleComment;
import com.why.dto.DTO4VideoType;
import com.why.util.JDBCPoolUtil;
import com.why.vo.VO4ArticleComment;
public class DAODaily_recommend {
	
//	@Test
	public List<Map.Entry<Integer,Double>> article_recommend(int user_id){
//		int user_id=1;
		Connection con = JDBCPoolUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<Double> user_article_score =new ArrayList<Double>();
		String sql  ="SELECT(a.Java * b.Java + a.Web * b.Web + a.Php * b.Php + a.Ios * b.Ios + a.Android * b.Android) FROM article_type_matrix a,userhabit_type_matrix b WHERE b.user_id = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			rs = ps.executeQuery();
			
			
			while(rs.next()){
				user_article_score.add(rs.getDouble(1));
			}
//			System.out.println(user_article_score);
			String condition = "";
			
			int i=1;
//			List<Map<Integer, Double>> list = new ArrayList<Map<Integer,Double>>();
			Map<Integer, Double> map = new TreeMap<Integer, Double>();
//			map.entrySet().
			for (Double score : user_article_score) { 
				
				
				condition = condition + ",user_article_score.`"+i+"` =" +score;	
				map.put(i,score );
				i++;
				
			}
			List<Map.Entry<Integer,Double>> list = new ArrayList<Map.Entry<Integer,Double>>(map.entrySet());
			Collections.sort(list, new Comparator<Map.Entry<Integer, Double>>(){
				@Override
				public int compare(Entry<Integer, Double> o1,
						Entry<Integer, Double> o2) {
					// TODO Auto-generated method stub
					return o2.getValue().compareTo(o1.getValue());
				}
			});
			 for(Map.Entry<Integer,Double> mapping:list){ 
	               System.out.println(mapping.getKey()+":"+mapping.getValue()); 
	          } 
//			 System.out.println(list);
//			 System.out.println(list.get(0).getKey());
//			 System.out.println( list.get(0).getValue());
			 
			
			String sql2 =" UPDATE user_article_score SET user_article_score.user_id ="+user_id+condition+" where user_id=?";
//			System.out.println(sql2);
			ps = con.prepareStatement(sql2);

			ps.setInt(1, user_id);
			ps.executeUpdate();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		
		
		
	}
	
	public List<Map.Entry<Integer,Double>> video_recommend(int user_id){
//		int user_id=1;
		Connection con = JDBCPoolUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<Double> user_video_score =new ArrayList<Double>();
		String sql  ="SELECT(a.Java * b.Java + a.Web * b.Web + a.Php * b.Php + a.Ios * b.Ios + a.Android * b.Android) FROM video_type_matrix a,userhabit_type_matrix b WHERE b.user_id = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			rs = ps.executeQuery();
			
			
			while(rs.next()){
				user_video_score.add(rs.getDouble(1));
			}
//			System.out.println(user_video_score);
			String condition = "";
			
			int i=1;
//			List<Map<Integer, Double>> list = new ArrayList<Map<Integer,Double>>();
			Map<Integer, Double> map = new TreeMap<Integer, Double>();
//			map.entrySet().
			for (Double score : user_video_score) { 
				
				
				condition = condition + ",user_video_score.`"+i+"` =" +score;	
				map.put(i,score );
				i++;
				
			}
			List<Map.Entry<Integer,Double>> list = new ArrayList<Map.Entry<Integer,Double>>(map.entrySet());
			Collections.sort(list, new Comparator<Map.Entry<Integer, Double>>(){
				@Override
				public int compare(Entry<Integer, Double> o1,
						Entry<Integer, Double> o2) {
					// TODO Auto-generated method stub
					return o2.getValue().compareTo(o1.getValue());
				}
			});
			 for(Map.Entry<Integer,Double> mapping:list){ 
	               System.out.println(mapping.getKey()+":"+mapping.getValue()); 
	               
	          } 
			 System.out.println(map);
			String sql2 =" UPDATE user_video_score SET user_video_score.user_id ="+user_id+condition+" where user_id=?";
//			System.out.println(sql2);
			ps = con.prepareStatement(sql2);

			ps.setInt(1, user_id);
			ps.executeUpdate();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		
		
		
	}
	
	public boolean UserhabitISNull(int user_id){
		Connection con = JDBCPoolUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<Double> user_video_score =new ArrayList<Double>();
		String sql  ="SELECT * from userhabit_type_matrix where user_id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			rs = ps.executeQuery();
			
			
			if(rs.next()){
				return false;
			}else{
				return true;
				
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return true;
	}
}