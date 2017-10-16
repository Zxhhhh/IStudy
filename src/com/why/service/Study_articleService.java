package com.why.service;
/*
 * author:way
 */
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.why.dao.DAO4ArticleComment;
import com.why.dao.DAO4Study_article;
import com.why.dao.DAODaily_recommend;
import com.why.dto.DTO4Article;
import com.why.dto.DTO4ArticleComment;
import com.why.vo.VO4Article;
import com.why.vo.VO4ArticleComment;

public class Study_articleService {
	public List<VO4Article> findAllArticle() {
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findAllArticle();
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	public List<VO4Article> findTopThreeArticleByType(int article_type) {
		
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findTopThreeArticleByType(article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	
	public List<VO4Article> findTopFiveArticleByType(int article_type) {
		
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findTopFiveArticleByType(article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	
	
	public List<VO4Article> findTopTenArticle() {
		
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findTopTenArticle();
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	public List<VO4Article> findTopFiveArticle() {
		
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findTopFiveArticle();
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	
	public VO4Article findByPrimary(int article_id){
		DTO4Article dto = new DAO4Study_article().findByPrimary(article_id);
		String article_author = dto.getArticle_author();
		String article_content = dto.getArticle_content();
		int article_count = dto.getArticle_count();
		int article_level = dto.getArticle_level();
		String article_name = dto.getArticle_name();
		String article_summary = dto.getArticle_summary();
		String article_time = dto.getArticle_time();
		int article_type = dto.getArticle_type();
		String article_pic = dto.getArticle_pic();
		return new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic);
	}
	
	public List<VO4Article> findAllArticleByCount(int article_type) {
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findAllArticleByCount(article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
//			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	public List<VO4Article> findAllArticleByTime(int article_type) {
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findAllArticleByTime(article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			int article_level = dto.getArticle_level();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
//			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	
	public List<VO4Article> findArticleByLevelTime(int article_level,int article_type) {
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findArticleByLevelTime(article_level, article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
//			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	public List<VO4Article> findArticleByLevelCount(int article_level,int article_type) {
		List<VO4Article> listvo = new ArrayList<VO4Article>();
		List<DTO4Article> listdto = new DAO4Study_article().findArticleByLevelCount(article_level,article_type);
		for (DTO4Article dto : listdto) {
			int article_id = dto.getArticle_id();
			String article_author = dto.getArticle_author();
			String article_content = dto.getArticle_content();
			int article_count = dto.getArticle_count();
			String article_name = dto.getArticle_name();
			String article_summary = dto.getArticle_summary();
			String article_time = dto.getArticle_time();
//			int article_type = dto.getArticle_type();
			String article_pic = dto.getArticle_pic();
			listvo.add(new VO4Article(article_id, article_name, article_author, article_content, article_count, article_type, article_summary, article_time, article_level,article_pic));
		}
		return listvo;
	}
	
	public List<VO4ArticleComment> findCommentsByArticle_id(int article_id){
		List<DTO4ArticleComment> list = new DAO4ArticleComment().findCommentsByArticle_id(article_id);
		List<VO4ArticleComment> listvo = new ArrayList<VO4ArticleComment>();
		for(DTO4ArticleComment dto:list){
			int comment_id = dto.getComment_id();
			String username  =dto.getComment_username();
			String content = dto.getComment_content();
			String date = dto.getComment_date();
			listvo.add(new VO4ArticleComment(comment_id, article_id, username, content, date));
			
		}
		return listvo;
	}
	
	public int findCountByArticle_id(int article_id){
		return new DAO4ArticleComment().findCountByArticle_id(article_id);
	}
	
	public int createArticle_commentByarticle_id(VO4ArticleComment VO4ArticleComment){
//		int comment_id=  VO4ArticleComment.getComment_id();
		int comment_articleid= VO4ArticleComment.getComment_articleid();
		String comment_username= VO4ArticleComment.getComment_username();
		String comment_content= VO4ArticleComment.getComment_content();
		String comment_date= VO4ArticleComment.getComment_date();
		DTO4ArticleComment dto = new DTO4ArticleComment(comment_articleid, comment_username, comment_content, comment_date);
		return new DAO4ArticleComment().createArticle_commentByarticle_id(dto);
	}
	
	public int findArticleCountByTypeId(int type_id){
		
		return new DAO4Study_article().findArticleCountByTypeId(type_id);
	}
	
	
	
	public List<VO4Article> article_recommend_five(int user_id){
		List<VO4Article> list = new ArrayList<VO4Article>();
		if(new DAODaily_recommend().UserhabitISNull(user_id)){
			return list = findTopFiveArticle();
		}
		List<Map.Entry<Integer,Double>> list_entry = new DAODaily_recommend().article_recommend(user_id);
		if(list_entry!=null&&list_entry.size()>0){
			for (int i=0;i<5;i++) {
				Entry<Integer, Double> entry = list_entry.get(i);
				VO4Article vo  = findByPrimary(entry.getKey());
				System.out.println("===="+entry.getKey());
				list.add(vo);
			}
			return list;
		}else{
			return list = findTopFiveArticle();
		}
	}
}
