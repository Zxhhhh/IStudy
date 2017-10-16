package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.why.dto.DTO4LiveQuestion$user;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;

public class DAO4LiveQuestion {

	public List<DTO4LiveQuestion$user> queryQuestionByLiveid(int live_id){
		Connection conn = null;
		PreparedStatement state = null;
		ResultSet result = null;
		String sql = "select * from live_question where live_id = ?";
		conn = JDBCPoolUtil.getConnection();
		 List<DTO4LiveQuestion$user> list = new ArrayList<DTO4LiveQuestion$user>();
		try {
			state = conn.prepareStatement(sql);
			state.setInt(1, live_id);
			result = state.executeQuery();
			while(result.next()){
				DTO4LiveQuestion$user question = new DTO4LiveQuestion$user();
				
				question.setQuestion_id(result.getInt("question_id"));
				question.setQuestion_create_time(result.getDate("question_create_time"));
				question.setQuestion_content(result.getString("question_content"));
				question.setQuestion_topic(result.getString("question_topic"));
				question.setUser_id(result.getInt("user_id"));
				question.setLive_id(result.getInt("live_id"));
				list.add(question);
				
			}

			return list;
		
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
	public String insertQuestion(DTO4LiveQuestion$user liveQuestion){
		Connection conn = null;
		PreparedStatement state = null;
		ResultSet result = null;
		String sql = "insert into live_question(user_id,question_topic,question_content,question_create_time,live_id) values(?,?,?,?,?)";
		conn = JDBCPoolUtil.getConnection();
		
		try {
			state=conn.prepareStatement(sql);
			state.setInt(1, liveQuestion.getUser_id());
			state.setString(2, liveQuestion.getQuestion_topic());
			state.setString(3,liveQuestion.getQuestion_content());
			state.setDate(4, new java.sql.Date(liveQuestion.getQuestion_create_time().getTime()));
			state.setInt(5, liveQuestion.getLive_id());
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
	
	public DTO4LiveQuestion$user queryQuestionByQId(int question_id){
		Connection conn = null;
		PreparedStatement state = null;
		ResultSet result = null;
		String sql = "select live_question.question_create_time,live_question.question_content,live_question.question_topic,live_question.user_id,live_question.question_id,user.user_name,user.user_pic from live_question,user where live_question.user_id =user.user_id and live_question.question_id = ?";
		conn = JDBCPoolUtil.getConnection();
		DTO4LiveQuestion$user question = new DTO4LiveQuestion$user();
		try {
			state = conn.prepareStatement(sql);
			state.setInt(1, question_id);
			result = state.executeQuery();
			
			while(result.next()){
				
				
				question.setQuestion_id(result.getInt("question_id"));
				question.setQuestion_create_time(result.getDate("question_create_time"));
				question.setQuestion_content(result.getString("question_content"));
				question.setQuestion_topic(result.getString("question_topic"));
				question.setUser_id(result.getInt("user_id"));
				question.setUser_name(result.getString("user_name"));
				question.setUser_pic(result.getString("user_pic"));
			
				
			}

			return question;
		
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
	
//	public static void main(String[] args) {
//		DAO4LiveQuestion liveQuestion = new DAO4LiveQuestion();
//		DTO4LiveQuestion liveQuestion2 =new DTO4LiveQuestion();
//		List<DTO4LiveQuestion> list = new ArrayList<DTO4LiveQuestion>();
//		list= liveQuestion.queryQuestionByLiveid(1);
//		for(int i=0;i<list.size();i++){
//			
//			System.out.println(list.size());
//			
//		}
//		
//	}
	
	
	
}
