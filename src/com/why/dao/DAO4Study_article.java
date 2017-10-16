package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4Article;
import com.why.util.JDBCPoolUtil;

public class DAO4Study_article {
	public int createArticle(DTO4Article DTO4Article) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int article_id = DTO4Article.getArticle_id();
			String article_name = DTO4Article.getArticle_name();
			String article_author = DTO4Article.getArticle_author();
			String article_content = DTO4Article.getArticle_content();
			int article_count = DTO4Article.getArticle_count();
			int article_type = DTO4Article.getArticle_type();
			String article_summary = DTO4Article.getArticle_summary();
			String article_time = DTO4Article.getArticle_time();
			int article_level = DTO4Article.getArticle_level();
			String sql = "insert into article(article_id,article_name,article_author,article_content,article_count,article_type,article_summary,article_time,article_level) values(?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_id);
			ps.setString(2, article_name);
			ps.setString(3, article_author);
			ps.setString(4, article_content);
			ps.setInt(5, article_count);
			ps.setInt(6, article_type);
			ps.setString(7, article_summary);
			ps.setString(8, article_time);
			ps.setInt(9, article_level);
			int flag = ps.executeUpdate();
			if (flag == 1) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}

	public int removeByPrimaryKey(int article_id) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "delete from Article where article_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_id);
			int flag = ps.executeUpdate();
			if (flag == 1) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}

	public int updateArticle(DTO4Article DTO4Article) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int article_id = DTO4Article.getArticle_id();
			String article_name = DTO4Article.getArticle_name();
			String article_author = DTO4Article.getArticle_author();
			String article_content = DTO4Article.getArticle_content();
			int article_count = DTO4Article.getArticle_count();
			int article_type = DTO4Article.getArticle_type();
			String article_summary = DTO4Article.getArticle_summary();
			String article_time = DTO4Article.getArticle_time();
			int article_level = DTO4Article.getArticle_level();
			String sql = "update Article set ,article_name=?,article_author=?,article_content=?,article_count=?,article_type=?,article_summary=?,article_time=?,article_level=? where article_id=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, article_name);
			ps.setString(2, article_author);
			ps.setString(3, article_content);
			ps.setInt(4, article_count);
			ps.setInt(5, article_type);
			ps.setString(6, article_summary);
			ps.setString(7, article_time);
			ps.setInt(8, article_level);
			ps.setInt(9, article_id);
			int flag = ps.executeUpdate();
			if (flag == 1) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}

	public DTO4Article findByPrimary(int article_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4Article DTO4Article = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_id);
			rs = ps.executeQuery();
			if (rs.next()) {

				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				DTO4Article = new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic);
				return DTO4Article;
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

	public List<DTO4Article> findAllArticle() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article";
			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	public List<DTO4Article> findTopThreeArticleByType(int article_type) {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_type=? order by article_count desc limit 3;";
			ps = con.prepareStatement(sql);
			ps.setInt(1,article_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");

				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	
	public List<DTO4Article> findTopFiveArticleByType(int article_type) {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_type=? order by article_count desc limit 5;";
			ps = con.prepareStatement(sql);
			ps.setInt(1,article_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");

				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	
	
	public List<DTO4Article> findTopTenArticle() {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article order by article_count desc limit 10;";
			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	public List<DTO4Article> findTopFiveArticle() {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article order by article_count desc limit 5;";
			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	
	
	
	public List<DTO4Article> findAllArticleByTime(int article_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_type=? order by article_time desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1,article_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
//				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	
	public List<DTO4Article> findAllArticleByCount(int article_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_type=? order by article_count desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1,article_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
//				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	public List<DTO4Article> findArticleByLevelCount(int article_level,int article_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_level=? and article_type=? order by article_count desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_level);
			ps.setInt(2,article_type);
			rs = ps.executeQuery(); 
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
//				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	
	public List<DTO4Article> findArticleByLevelTime(int article_level,int article_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from article where article_level=? and article_type=? order by article_time desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, article_level);
			ps.setInt(2, article_type);
			rs = ps.executeQuery(); 
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
//				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	public int addPoint(DTO4Article DTO4Article,int point) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int article_id = DTO4Article.getArticle_id();
			String article_name = DTO4Article.getArticle_name();
			String article_author = DTO4Article.getArticle_author();
			String article_content = DTO4Article.getArticle_content();
			int article_count = DTO4Article.getArticle_count();
			int article_type = DTO4Article.getArticle_type();
			String article_summary = DTO4Article.getArticle_summary();
			String article_time = DTO4Article.getArticle_time();
			int article_level = DTO4Article.getArticle_level();
			String sql = "update Article set ,article_name=?,article_author=?,article_content=?,article_count=?,article_type=?,article_summary=?,article_time=?,article_level=? where article_id=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, article_name);
			ps.setString(2, article_author);
			ps.setString(3, article_content);
			ps.setInt(4, article_count);
			ps.setInt(5, article_type);
			ps.setString(6, article_summary);
			ps.setString(7, article_time);
			ps.setInt(8, article_level);
			ps.setInt(9, article_id);
			int flag = ps.executeUpdate();
			if (flag == 1) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
	
	
	public List<DTO4Article> findArticleByKeyword(String keyword) {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Article> list = new ArrayList<DTO4Article>();
		try {
			con = JDBCPoolUtil.getConnection();
			keyword="%"+keyword+"%";
			String sql = "select * from article where article_content like ? || article_author like ? || article_name  like ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, keyword);
			ps.setString(2, keyword);
			ps.setString(3, keyword);
			rs = ps.executeQuery();
			while (rs.next()) {
				int article_id = rs.getInt("article_id");
				String article_name = rs.getString("article_name");
				String article_author = rs.getString("article_author");
				String article_content = rs.getString("article_content");
				int article_count = rs.getInt("article_count");
				int article_type = rs.getInt("article_type");
				String article_summary = rs.getString("article_summary");
				String article_time = rs.getString("article_time");
				int article_level = rs.getInt("article_level");
				String article_pic = rs.getString("article_pic");
				list.add(new DTO4Article(article_id, article_name,
						article_author, article_content, article_count,
						article_type, article_summary, article_time,
						article_level,article_pic));
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
	
	public int findArticleCountByTypeId(int type_id){

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		int result = 0;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select count(*) from article where article_type=?";
			ps = con.prepareStatement(sql);
			
			ps.setInt(1,type_id);
			rs = ps.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1); 
			}
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return result;
	
		
		
	}
	
	
}