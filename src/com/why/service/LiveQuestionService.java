package com.why.service;

import java.util.ArrayList;
import java.util.List;

import com.why.dao.DAO4LiveQuestion;
import com.why.dao.DAO4QuestionComment;
import com.why.dto.DTO4LiveQuestion$user;
import com.why.dto.DTO4QuestionComment$User;
import com.why.vo.VO4Comment$UserRtn;
import com.why.vo.VO4QuestionAddParam;
import com.why.vo.VO4QuestionCommentAddParam;
import com.why.vo.VO4LiveQuestionRtn;
public class LiveQuestionService {
	
	public List<VO4LiveQuestionRtn> queryAllQuestionByLiveId(int live_id){
		
		DAO4LiveQuestion dao4LiveQuestion = new DAO4LiveQuestion();
		List<VO4LiveQuestionRtn> vo4LiveQuestionRtns = new ArrayList<VO4LiveQuestionRtn>();
		List<DTO4LiveQuestion$user> dto4LiveQuestions = new ArrayList<DTO4LiveQuestion$user>();
		
		dto4LiveQuestions = dao4LiveQuestion.queryQuestionByLiveid(live_id);
		
		for(int i = 0;i<dto4LiveQuestions.size();i++){
			VO4LiveQuestionRtn vo4LiveQuestionRtn =   new VO4LiveQuestionRtn();
			vo4LiveQuestionRtn.setLive_id(dto4LiveQuestions.get(i).getLive_id());
			vo4LiveQuestionRtn.setQuestion_content(dto4LiveQuestions.get(i).getQuestion_content());
			vo4LiveQuestionRtn.setQuestion_create_time(dto4LiveQuestions.get(i).getQuestion_create_time());
			vo4LiveQuestionRtn.setQuestion_id(dto4LiveQuestions.get(i).getQuestion_id());
			vo4LiveQuestionRtn.setQuestion_topic(dto4LiveQuestions.get(i).getQuestion_topic());
			vo4LiveQuestionRtn.setUser_id(dto4LiveQuestions.get(i).getUser_id());
			vo4LiveQuestionRtns.add(vo4LiveQuestionRtn);
		}
		
		
		return vo4LiveQuestionRtns;
		
	
	}
public VO4LiveQuestionRtn queryQuestionByQId(int question_id){
		
		DAO4LiveQuestion dao4LiveQuestion = new DAO4LiveQuestion();
		VO4LiveQuestionRtn vo4LiveQuestionRtn = new VO4LiveQuestionRtn();
		DTO4LiveQuestion$user dto4LiveQuestion = new DTO4LiveQuestion$user();
		
		dto4LiveQuestion = dao4LiveQuestion.queryQuestionByQId(question_id);
		
		
			
			vo4LiveQuestionRtn.setQuestion_content(dto4LiveQuestion.getQuestion_content());
			vo4LiveQuestionRtn.setQuestion_create_time(dto4LiveQuestion.getQuestion_create_time());
			vo4LiveQuestionRtn.setQuestion_id(dto4LiveQuestion.getQuestion_id());
			vo4LiveQuestionRtn.setQuestion_topic(dto4LiveQuestion.getQuestion_topic());
			vo4LiveQuestionRtn.setUser_id(dto4LiveQuestion.getUser_id());
			vo4LiveQuestionRtn.setUser_name(dto4LiveQuestion.getUser_name());
			vo4LiveQuestionRtn.setUser_pic(dto4LiveQuestion.getUser_pic());
	
		
		
		return vo4LiveQuestionRtn;
		
	
		
	}
	
public List<VO4Comment$UserRtn> queryCommentByQid(int question_id){
	
	DAO4QuestionComment dao4QuestionComment = new DAO4QuestionComment();
	List<VO4Comment$UserRtn> vocomments = new ArrayList<VO4Comment$UserRtn>();
	List<DTO4QuestionComment$User> dtocomments = new ArrayList<DTO4QuestionComment$User>();
	
	dtocomments = dao4QuestionComment.queryQuestionByQId(question_id);
	
	for(int i = 0;i<dtocomments.size();i++){
		VO4Comment$UserRtn vo4Comment$UserRtn =   new VO4Comment$UserRtn();
		vo4Comment$UserRtn.setComment_content(dtocomments.get(i).getComment_content());
		vo4Comment$UserRtn.setComment_create_time(new java.sql.Date(dtocomments.get(i).getComment_create_time().getTime()));
		vo4Comment$UserRtn.setComment_id(dtocomments.get(i).getComment_id());
		vo4Comment$UserRtn.setUser_name(dtocomments.get(i).getUser_name());
		vo4Comment$UserRtn.setUser_id(dtocomments.get(i).getUser_id());
		vo4Comment$UserRtn.setUser_pic(dtocomments.get(i).getUser_pic());
		vocomments.add(vo4Comment$UserRtn);
	}
	
	
	return vocomments;
	
} 
	
public String insertQuestion(VO4QuestionAddParam insertParam){
	
	DAO4LiveQuestion dao4LiveQuestion = new DAO4LiveQuestion();
	DTO4LiveQuestion$user dto = new DTO4LiveQuestion$user();
	
	dto.setLive_id(insertParam.getLive_id());
	dto.setQuestion_content(insertParam.getQuestion_content());
	dto.setQuestion_topic(insertParam.getQuestion_topic());
	dto.setUser_id(insertParam.getUser_id());
	dto.setQuestion_create_time(insertParam.getQuestion_create_time());
	
	
	return dao4LiveQuestion.insertQuestion(dto);
	
	
	
}

public String InsertComment(VO4QuestionCommentAddParam vo){
	
	DTO4QuestionComment$User dto = new DTO4QuestionComment$User();
	dto.setQuestion_id(vo.getQuestion_id());
	dto.setUser_id(vo.getUser_id());
	dto.setComment_content(vo.getComment_content());
	dto.setComment_create_time(vo.getComment_create_time());
 
	return new DAO4QuestionComment().insert(dto);
	
}


}
