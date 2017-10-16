package com.why.service;

import java.util.ArrayList;

import com.why.dao.DAO4LiveComment;
import com.why.dto.DTO4LiveComment;
import com.why.vo.VO4LiveCommentAddParam;
import com.why.vo.VO4LiveCommentShowRtn;
/*
 * author:lhy
 */
public class LiveCommentService {

	public ArrayList<VO4LiveCommentShowRtn> queryCommentByLiveId(
			int comment_liveid) {
		ArrayList<DTO4LiveComment> dto4LiveComments = new ArrayList<DTO4LiveComment>();
		ArrayList<VO4LiveCommentShowRtn> vo4LiveCommentShowRtns = new ArrayList<VO4LiveCommentShowRtn>();
		DAO4LiveComment dao4LiveComment = new DAO4LiveComment();

		dto4LiveComments = dao4LiveComment.queryCommentByLiveId(comment_liveid);

		for (int i = 0; i < dto4LiveComments.size(); i++) {
			VO4LiveCommentShowRtn vo4LiveCommentShowRtn = new VO4LiveCommentShowRtn();
			vo4LiveCommentShowRtn.setComment_content(dto4LiveComments.get(i)
					.getComment_content());
			vo4LiveCommentShowRtn.setComment_username(dto4LiveComments.get(i)
					.getComment_username());
			vo4LiveCommentShowRtns.add(vo4LiveCommentShowRtn);

		}

		return vo4LiveCommentShowRtns;

	}
	public String addComment(VO4LiveCommentAddParam vo4LiveCommentAddParam){
		DAO4LiveComment dao4LiveComment = new DAO4LiveComment();
		DTO4LiveComment dto4LiveComment = new DTO4LiveComment();
		
		if(vo4LiveCommentAddParam.getComment_liveid()!=null&&vo4LiveCommentAddParam.getComment_username()!=null&&vo4LiveCommentAddParam.getComment_content()!=null){
			
			dto4LiveComment.setComment_content(vo4LiveCommentAddParam.getComment_content());
			dto4LiveComment.setComment_liveid(Integer.parseInt(vo4LiveCommentAddParam.getComment_liveid()));
			dto4LiveComment.setComment_username(vo4LiveCommentAddParam.getComment_username());
			
			if(dao4LiveComment.addLiveComment(dto4LiveComment).equals("0")){
				
				return "0";
				
			}
			else {
				return "1";
			}
			
			
		}
		
		else{
			
			return "1";
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
}
