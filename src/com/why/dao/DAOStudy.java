package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.why.dto.DTO4User;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;

public class DAOStudy {
	public int findStudyState(int user_id){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select `study_statement` from user where user_id=?";
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, user_id);
			rs = ps.executeQuery();
			if(rs.next()){
				String state = rs.getString(1);
				if(state==null){
					return 0;
				}else if(state.equals("true")){
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return 0;// -1表示出错
	}
	
	public int cleanStudyState(int user_id){

		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "DELETE FROM `study` WHERE (`user_id`=?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			int result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return -1;
	}
	
	
	public int joinStudy(int user_id) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "update user set `study_statement`='true'  where user_id=?";
			ps = con.prepareStatement(sql);

			ps.setInt(1, user_id);
			int result = ps.executeUpdate();
			return result;
			// 返回0表示没有修改
			// 返回1表示成功加入
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return -1;// -1表示出错
	}

	public int quitStudy(int user_id) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "UPDATE `user` SET `study_statement`=null WHERE (`user_id`=?)";
			ps = con.prepareStatement(sql);

			ps.setInt(1, user_id);
			int result = ps.executeUpdate();
			return result;
			// 返回0表示没有修改
			// 返回1表示成功退出
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
		return -1;// -1表示出错
	}

	public void studyArticle(int user_id, int article_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet result = null;

		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from study where user_id=? and article_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			ps.setInt(2, article_id);

			result = ps.executeQuery();
			if (!result.next()) {

				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(ps);
				String sql2 = "INSERT INTO `study` (`user_id`, `article_id`) VALUES (?, ?)";

				ps = con.prepareStatement(sql2);
				ps.setInt(1, user_id);
				ps.setInt(2, article_id);

				ps.executeUpdate();

			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		} finally {
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}

	public void studyVideo(int user_id, int video_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet result = null;

		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from study where user_id=? and video_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			ps.setInt(2, video_id);

			result = ps.executeQuery();
			if (!result.next()) {
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(ps);
				String sql2 = "INSERT INTO `study` (`user_id`, `video_id`) VALUES (?, ?)";

				ps = con.prepareStatement(sql2);
				ps.setInt(1, user_id);
				ps.setInt(2, video_id);

				ps.executeUpdate();

			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		} finally {
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}

	public int countStudy(int user_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet result = null;

		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select count(*) from study where user_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			result = ps.executeQuery();
			int count =0;
			if(result.next()){
				count = result.getInt(1);
			}
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		} finally {
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(ps);
			JDBCPoolUtil.close(con);
		}
	}
}
