package com.why.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.why.dto.DTO4Article;
import com.why.dto.DTO4Video;
import com.why.util.JDBCPoolUtil;

public class DAO4Study_video {
	public int createVideo(DTO4Video DTO4Video) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int video_id = DTO4Video.getVideo_id();
			String video_name = DTO4Video.getVideo_name();
			int video_type = DTO4Video.getVideo_type();
			String video_time = DTO4Video.getVideo_time();
			String video_author = DTO4Video.getVideo_author();
			String video_summary = DTO4Video.getVideo_summary();
			String video_content = DTO4Video.getVideo_content();
			int video_count = DTO4Video.getVideo_count();
			int video_level = DTO4Video.getVideo_level();
			String sql = "insert into video(video_id,video_name,video_type,video_time,video_author,video_summary,video_content,video_count,video_level) values(?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_id);
			ps.setString(2, video_name);
			ps.setInt(3, video_type);
			ps.setString(4, video_time);
			ps.setString(5, video_author);
			ps.setString(6, video_summary);
			ps.setString(7, video_content);
			ps.setInt(8, video_count);
			ps.setInt(9, video_level);
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

	public int removeByPrimaryKey(int video_id) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "delete from video where video_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_id);
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

	public int updateVideo(DTO4Video DTO4Video) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JDBCPoolUtil.getConnection();
			int video_id = DTO4Video.getVideo_id();
			String video_name = DTO4Video.getVideo_name();
			int video_type = DTO4Video.getVideo_type();
			String video_time = DTO4Video.getVideo_time();
			String video_author = DTO4Video.getVideo_author();
			String video_summary = DTO4Video.getVideo_summary();
			String video_content = DTO4Video.getVideo_content();
			int video_count = DTO4Video.getVideo_count();
			int video_level = DTO4Video.getVideo_level();
			String sql = "update Video set ,video_name=?,video_type=?,video_time=?,video_author=?,video_summary=?,video_content=?,video_count=?,video_level=? where video_id=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, video_name);
			ps.setInt(2, video_type);
			ps.setString(3, video_time);
			ps.setString(4, video_author);
			ps.setString(5, video_summary);
			ps.setString(6, video_content);
			ps.setInt(7, video_count);
			ps.setInt(8, video_level);
			ps.setInt(9, video_id);
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

	public DTO4Video findByPrimary(int video_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DTO4Video DTO4Video = null;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_id);
			rs = ps.executeQuery();
			if (rs.next()) {

				String video_name = rs.getString("video_name");
				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				DTO4Video = new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic);
				return DTO4Video;
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

	public List<DTO4Video> findAllVideo() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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

	public List<DTO4Video> findTopTwoVideoByType(int video_type) {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_type=? order by video_count desc limit 2;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");

				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	
	public List<DTO4Video> findTopThreeVideoByType(int video_type) {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_type=? order by video_count desc limit 3;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");

				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	public List<DTO4Video> findTopSixVideoByType(int video_type) {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_type=? order by video_count desc limit 6;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");

				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	
	
	
	public List<DTO4Video> findAllVideoByTime(int video_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_type=? order by video_time desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
//				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	public List<DTO4Video> findAllVideoByCount(int video_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_type=? order by video_count desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
//				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	public List<DTO4Video> findFiveVideoByCount() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video  order by video_count desc limit 5;";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				int video_level = rs.getInt("video_level");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	public List<DTO4Video> findVideoByLevelByTime(int video_level,int video_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_level=? and video_type=?  order by video_time desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_level);
			ps.setInt(2, video_type);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
//				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	public List<DTO4Video> findVideoByLevelByCount(int video_level,int video_type) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<DTO4Video> list = new ArrayList<DTO4Video>();
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select * from video where video_level=? and video_type=? order by video_count desc";
			ps = con.prepareStatement(sql);
			ps.setInt(1, video_level);
			ps.setInt(2, video_level);
			rs = ps.executeQuery();
			while (rs.next()) {
				int video_id = rs.getInt("video_id");
				String video_name = rs.getString("video_name");
//				int video_type = rs.getInt("video_type");
				String video_time = rs.getString("video_time");
				String video_author = rs.getString("video_author");
				String video_summary = rs.getString("video_summary");
				String video_content = rs.getString("video_content");
				int video_count = rs.getInt("video_count");
				String video_pic = rs.getString("video_pic");
				list.add(new DTO4Video(video_id, video_name, video_type,
						video_time, video_author, video_summary, video_content,
						video_count, video_level,video_pic));
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
	
	
	public int findVideoCountByTypeId(int type_id){

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result = 0;
		try {
			con = JDBCPoolUtil.getConnection();
			String sql = "select count(*) from video where video_type=?";
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