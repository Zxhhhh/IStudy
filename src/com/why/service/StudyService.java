package com.why.service;

import com.why.dao.DAOStudy;

public class StudyService {
	public void studyVideo(int user_id, int video_id) {
		new DAOStudy().studyVideo(user_id, video_id);
		
	}
	
	public void studyArticle(int user_id, int article_id) {
		
		new DAOStudy().studyArticle(user_id, article_id);
	}
	public int joinStudy(int user_id) {
		return new DAOStudy().joinStudy(user_id);
	}
	
	public int quitStudy(int user_id) {
		return new DAOStudy().quitStudy(user_id);
		
	}
	
	public int countStudy(int user_id) {
		return new DAOStudy().countStudy(user_id);
	}
	
	public int cleanStudyState(int user_id){
		return new DAOStudy().cleanStudyState(user_id);
	}
	public int findStudyState(int user_id){
		return new DAOStudy().findStudyState(user_id);
	}
}
