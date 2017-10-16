package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4VideoComment;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;

public class DAO4VideoComment {
	
	public List<DTO4VideoComment> queryByVideoid(String comment_videoid){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		ResultSet result = null;
		
		List<DTO4VideoComment> dto_videoCommentList = new ArrayList<DTO4VideoComment>();
		
		String sql = "select * from video_comment where comment_videoid=?";
		
		try{
			state = connect.prepareStatement(sql);
			state.setString(1, comment_videoid);
			result = state.executeQuery();
			while (result.next()) {
				DTO4VideoComment dto_videoComment = new DTO4VideoComment();
				
				dto_videoComment.setComment_content(result.getString("comment_content"));
				dto_videoComment.setComment_date(result.getString("comment_date"));
				dto_videoComment.setComment_id(result.getInt("comment_id"));
				dto_videoComment.setComment_username(result.getString("comment_username"));
				dto_videoComment.setComment_videoid(result.getInt("comment_videoid"));
				
				dto_videoCommentList.add(dto_videoComment);
			}
			return dto_videoCommentList;
		}catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("系统错误，请稍后再试");
		}finally{
			
			JDBCPoolUtil.close(result);
			JDBCPoolUtil.close(state);
			JDBCPoolUtil.close(connect);
		}
		
	}
	
	public String addVideoComment(DTO4VideoComment dto_videoComment){
		
		Connection connect = JDBCPoolUtil.getConnection();
		PreparedStatement state = null;
		
		String sql = "insert into video_comment(comment_videoid,comment_username,comment_content,comment_date) values(?,?,?,?)";
		try{
			state = connect.prepareStatement(sql);
			state.setInt(1,dto_videoComment.getComment_videoid());
			state.setString(2, dto_videoComment.getComment_username());
			state.setString(3, dto_videoComment.getComment_content());
			state.setString(4, dto_videoComment.getComment_date());
			
			int i = state.executeUpdate();
			
			if(i!=0){
				return "0";
			}else{
				return "1";
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
			throw new BaseException("服务器异常，请稍后重试");
		}
	}

}
