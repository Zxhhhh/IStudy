package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4User;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;
import com.why.vo.VO4UserAddParam;

public class DAO4User {
	
	
	public DTO4User queryByName(String user_name){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		String sql = "select * from user where user_name=?";
		try {
			state = connect.prepareStatement(sql);
			state.setString(1, user_name);
			result = state.executeQuery();
			if(result.next()){
				DTO4User dto_user = new DTO4User();
				dto_user.setUser_id(result.getInt("user_id"));
				dto_user.setUser_summary(result.getString("user_summary"));
				dto_user.setUser_age(result.getString("user_age"));
				dto_user.setUser_email(result.getString("user_email"));
				dto_user.setUser_name(result.getString("user_name"));
				dto_user.setUser_password(result.getString("user_password"));
				dto_user.setUser_pic(result.getString("user_pic"));
				dto_user.setUser_points(result.getInt("user_points"));
				dto_user.setUser_sex(result.getString("user_sex"));
				
				return dto_user;
			}else{
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	public String add(DTO4User dto_user){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		
		String sql = "insert into user(user_name,user_password,user_email) values(?,?,?)";
		try {
			state = connect.prepareStatement(sql);
			state.setString(1, dto_user.getUser_name());
			state.setString(2, dto_user.getUser_password());
			state.setString(3, dto_user.getUser_email());
			
			int i = state.executeUpdate();
			if(i!=0){
				return "0";
			}else{
				return "1";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	public String update(DTO4User dto_user){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		
		String sql = "update user  set user_age=?,user_email=?,user_sex=?,user_summary=?,user_pic=? where user_name=?";
		try {
			state = connect.prepareStatement(sql);
			state.setString(1, dto_user.getUser_age());
			state.setString(2, dto_user.getUser_email());
			state.setString(3, dto_user.getUser_sex());
			state.setString(4, dto_user.getUser_summary());
			state.setString(5, dto_user.getUser_pic());
			state.setString(6, dto_user.getUser_name());
			int i = state.executeUpdate();
			if(i!=0){
				return "0";
			}else{
				return "1";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	
	public DTO4User queryById(String user_id){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		String sql = "select * from user where user_id=?";
		try {
			state = connect.prepareStatement(sql);
			state.setString(1, user_id);
			result = state.executeQuery();
			if(result.next()){
				DTO4User dto_user = new DTO4User();
				dto_user.setUser_id(result.getInt("user_id"));
				dto_user.setUser_summary(result.getString("user_summary"));
				dto_user.setUser_age(result.getString("user_age"));
				dto_user.setUser_email(result.getString("user_email"));
				dto_user.setUser_name(result.getString("user_name"));
				dto_user.setUser_password(result.getString("user_password"));
				dto_user.setUser_pic(result.getString("user_pic"));
				dto_user.setUser_points(result.getInt("user_points"));
				dto_user.setUser_sex(result.getString("user_sex"));
				
				return dto_user;
			}else{
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("数据库异常，请稍后再试");
		}finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
	}
	
	
	// 关注好友功能
		public String followUser(int myid, int otherid) {
			// myid 表示自己的id 一般通过session获取
			// otherid 表示要关注的人的id 一般通过关注按钮传参获取
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;

			String sql = "insert into user_follow(myid,otherid) values(?,?)";
			try {
				state = connect.prepareStatement(sql);
				state.setInt(1, myid);
				state.setInt(2, otherid);

				int i = state.executeUpdate();
				if (i != 0) {
					return "0";// 产生影响 表示关注成功
				} else {
					return "1";// 关注失败 或者已经关注
				}

			} catch (SQLException e) {

				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");

			} finally {
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}

		}

		// 取消关注功能
		public String notfollowUser(int myid, int otherid) {
			// myid 表示自己的id 一般通过session获取
			// otherid 表示要关注的人的id 一般通过关注按钮传参获取
			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;

			String sql = "DELETE FROM user_follow WHERE myid=? and otherid =?";
			try {
				state = connect.prepareStatement(sql);
				state.setInt(1, myid);
				state.setInt(2, otherid);

				int i = state.executeUpdate();
				if (i != 0) {
					return "0";// 产生影响 表取消示关注成功
				} else {
					return "1";// 关注失败 或者已经取消关注了
				}

			} catch (SQLException e) {

				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");

			} finally {
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}

		}

		// 查询好友功能
		public List<DTO4User> queryMyFriends(int myid) {

			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			List<DTO4User> list_follow = new ArrayList<DTO4User>();// 关注了的人的列表
			// 连接查询 myid自己的id otherid关注的好友的id
			String sql = "select * from user_follow,`user` where myid=? and otherid = user_id";
			try {
				state = connect.prepareStatement(sql);
				state.setInt(1, myid);
				result = state.executeQuery();
				while (result.next()) {

					DTO4User dto_user = new DTO4User();
					dto_user.setUser_id(result.getInt("user_id"));
					dto_user.setUser_summary(result.getString("user_summary"));
					dto_user.setUser_age(result.getString("user_age"));
					dto_user.setUser_email(result.getString("user_email"));
					dto_user.setUser_name(result.getString("user_name"));
					dto_user.setUser_password(result.getString("user_password"));
					dto_user.setUser_pic(result.getString("user_pic"));
					dto_user.setUser_points(result.getInt("user_points"));
					dto_user.setUser_sex(result.getString("user_sex"));
					list_follow.add(dto_user);

				}
				// if(list_follow.size()!=0){
				return list_follow;
				// }
				// else {
				// return null;
				// }
			} catch (SQLException e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			} finally {
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
		
		public boolean isFriend(int myid,int otherid) {

			Connection connect = JDBCPoolUtil.getConnection();
			PreparedStatement state = null;
			ResultSet result = null;
			// 连接查询 myid自己的id otherid关注的好友的id
			String sql = "select * from user_follow where myid=? and otherid=?";
			try {
				state = connect.prepareStatement(sql);
				state.setInt(1, myid);
				state.setInt(2, otherid);
				result = state.executeQuery();
				if (result.next()) {
					return true;
				}else{
					return false;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new BaseException("数据库异常，请稍后再试");
			} finally {
				JDBCPoolUtil.close(result);
				JDBCPoolUtil.close(state);
				JDBCPoolUtil.close(connect);
			}
		}
	
}
