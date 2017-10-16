package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4LiveQuestion$user;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;
import com.why.dto.DTO4QuestionComment$User;

public class DAO4QuestionComment {

	
	public List<DTO4QuestionComment$User> queryQuestionByQId(int question_id){
		Connection conn = null;
		PreparedStatement state = null;
		ResultSet result = null;
		String sql = "select question_comment.comment_id,question_comment.comment_content,question_comment.user_id,question_comment.comment_create_time,user.user_name,user.user_pic from question_comment,user where question_comment.user_id =user.user_id and question_comment.question_id =?";
		conn = JDBCPoolUtil.getConnection();
		List<DTO4QuestionComment$User> comments = new ArrayList<DTO4QuestionComment$User>();
		try {
			state = conn.prepareStatement(sql);
			state.setInt(1, question_id);
			result = state.executeQuery();
			
			while(result.next()){
				
				DTO4QuestionComment$User comment = new DTO4QuestionComment$User();
				comment.setComment_content((result.getString("comment_content")));
				comment.setComment_create_time(result.getDate("comment_create_time"));
				comment.setUser_id(result.getInt("user_id"));
				comment.setUser_name(result.getString("user_name"));
				comment.setUser_pic(result.getString("user_pic"));
				comment.setComment_id(result.getInt("comment_id"));
				comments.add(comment);
				
			}

			return comments;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BaseException("数据库查询异常！");
		}
		finally{
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(conn);
		}
	
		
	}
	public String insert(DTO4QuestionComment$User comment){
		Connection conn = null;
		PreparedStatement state = null;
		ResultSet result = null;
		String sql = "insert into question_comment(user_id,question_id,comment_content,comment_create_time) values(?,?,?,?)";
		conn = JDBCPoolUtil.getConnection();
		
		try {
			state=conn.prepareStatement(sql);
			state.setInt(1, comment.getUser_id());
			state.setInt(2, comment.getQuestion_id());
			state.setString(3,comment.getComment_content());
			state.setDate(4, new java.sql.Date(comment.getComment_create_time().getTime()));
			int i = state.executeUpdate();
			
			if(i!=0){
				
				return "0";
				
			}else{
				
				
				return "1";
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BaseException("数据库插入异常，请稍后再试");
		}
		
		finally {
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(conn);
		}
		
		
		
		
		
		
	}
	
	
}
