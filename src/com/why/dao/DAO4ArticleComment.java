package com.why.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4ArticleComment;
import com.why.util.JDBCPoolUtil;
import com.why.vo.VO4ArticleComment;
public class DAO4ArticleComment {
	public int createArticle_comment(DTO4ArticleComment DTO4ArticleComment){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int comment_id = DTO4ArticleComment.getComment_id();
			int comment_articleid = DTO4ArticleComment.getComment_articleid();
			String comment_username = DTO4ArticleComment.getComment_username();
			String comment_content = DTO4ArticleComment.getComment_content();
			String comment_date = DTO4ArticleComment.getComment_date();
			String sql = "insert into Article_comment(comment_id,comment_articleid,comment_username,comment_content,comment_date) values(?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, comment_id);
			ps.setInt(2, comment_articleid);
			ps.setString(3, comment_username);
			ps.setString(4, comment_content);
			ps.setString(5, comment_date);
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
	
	public int createArticle_commentByarticle_id(DTO4ArticleComment DTO4ArticleComment){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
//			int comment_id = DTO4ArticleComment.getComment_id();
			int comment_articleid = DTO4ArticleComment.getComment_articleid();
			String comment_username = DTO4ArticleComment.getComment_username();
			String comment_content = DTO4ArticleComment.getComment_content();
			String comment_date = DTO4ArticleComment.getComment_date();
//			String sql = "insert into Article_comment(comment_id,comment_username,comment_content,comment_date) values(?,?,?,?) where comment_articleid=?";
			String sql = "insert into Article_comment(comment_articleid,comment_username,comment_content,comment_date) values(?,?,?,?)";
			ps = con.prepareStatement(sql);
//			ps.setInt(1, comment_id);
			ps.setInt(1, comment_articleid);
			ps.setString(2, comment_username);
			ps.setString(3, comment_content);
			ps.setString(4, comment_date);

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
	
	public int removeByPrimaryKey(int comment_id){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "delete from Article_comment where comment_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, comment_id);
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
	public int updateArticle_comment(DTO4ArticleComment DTO4ArticleComment){
		Connection con  = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int comment_id = DTO4ArticleComment.getComment_id();
			int comment_articleid = DTO4ArticleComment.getComment_articleid();
			String comment_username = DTO4ArticleComment.getComment_username();
			String comment_content = DTO4ArticleComment.getComment_content();
			String comment_date = DTO4ArticleComment.getComment_date();
			String sql = "update Article_comment set ,comment_articleid=?,comment_username=?,comment_content=?,comment_date=? where comment_id=?";
			ps = con.prepareStatement(sql);

			ps.setInt(1, comment_articleid);
			ps.setString(2, comment_username);
			ps.setString(3, comment_content);
			ps.setString(4, comment_date);
			ps.setInt(5, comment_id);
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
	public DTO4ArticleComment findByPrimary(int comment_id){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4ArticleComment DTO4ArticleComment = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Article_comment where comment_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, comment_id);
			rs = ps.executeQuery();
			if (rs.next()) {

				int comment_articleid = rs.getInt("comment_articleid");
				String comment_username = rs.getString("comment_username");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date");
				DTO4ArticleComment = new DTO4ArticleComment(comment_id,comment_articleid,comment_username,comment_content,comment_date);
				return DTO4ArticleComment;
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
	public List<DTO4ArticleComment> findAllDTO4ArticleComment(){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4ArticleComment> list = new ArrayList<DTO4ArticleComment>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Article_comment";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int comment_id = rs.getInt("comment_id");
				int comment_articleid = rs.getInt("comment_articleid");
				String comment_username = rs.getString("comment_username");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date");
				list.add(new DTO4ArticleComment(comment_id,comment_articleid,comment_username,comment_content,comment_date));
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
	
	public List<DTO4ArticleComment> findCommentsByArticle_id(int article_id){
		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4ArticleComment> list = new ArrayList<DTO4ArticleComment>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from Article_comment where comment_articleid=?";	
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				int comment_id = rs.getInt("comment_id");
				String comment_username = rs.getString("comment_username");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date");
				list.add(new DTO4ArticleComment(comment_id,article_id,comment_username,comment_content,comment_date));
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
	
	public int findCountByArticle_id(int article_id){

		Connection con  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int comment_count =-1;
		List<DTO4ArticleComment> list = new ArrayList<DTO4ArticleComment>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select COUNT(*)	FROM article_comment where comment_articleid=?";	
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_id);
			rs = ps.executeQuery();
			if (rs.next()) {
				comment_count= rs.getInt(1);
			
			}
			return comment_count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		
	
	}
}