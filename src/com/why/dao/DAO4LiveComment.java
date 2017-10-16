package com.why.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.why.dto.DTO4LiveComment;
import com.why.extraException.BaseException;
import com.why.util.JDBCPoolUtil;

public class DAO4LiveComment {

	public ArrayList<DTO4LiveComment> queryCommentByLiveId(int comment_liveid) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<DTO4LiveComment> list = new ArrayList<DTO4LiveComment>();

		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "select * from live_comment where comment_liveid =?";//
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, comment_liveid);
			rs = stmt.executeQuery();
			while (rs.next()) {
				DTO4LiveComment liveComment = new DTO4LiveComment();
				liveComment.setComment_content(rs.getString("comment_content"));
				liveComment.setComment_username(rs
						.getString("comment_username"));
				list.add(liveComment);

			}
			for (DTO4LiveComment liveComment : list) {
				System.out.println(liveComment);
			}
			return list;

		} catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("查询错误");
		} finally {

			JDBCPoolUtil.close(rs);
			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}

	}

	public String addLiveComment(DTO4LiveComment dto4LiveComment) {
		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = JDBCPoolUtil.getConnection();
			String sql = "insert into live_comment(comment_liveid,comment_username,comment_content,comment_date) values(?,?,?,?)";//
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, dto4LiveComment.getComment_liveid());
			stmt.setString(2, dto4LiveComment.getComment_username());
			stmt.setString(3, dto4LiveComment.getComment_content());
			stmt.setDate(4, new Date(new java.util.Date().getTime()));
			int i = stmt.executeUpdate();
			if (i != 0) {
				return "0";

			} else {
				return "1";
			}
		} catch (Exception e) {

			e.printStackTrace();
			throw new BaseException("数据库插入数据异常");
		} finally {

			JDBCPoolUtil.close(stmt);
			JDBCPoolUtil.close(conn);
		}

	}

}
