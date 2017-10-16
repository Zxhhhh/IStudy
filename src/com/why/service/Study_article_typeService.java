package com.why.service;
/*
 * author:way
 */
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import com.why.dao.DAO4Study_article_type;
import com.why.dao.DAODaily_recommend;


import com.why.dto.DTO4Article_type;
import com.why.vo.VO4Article_type;


public class Study_article_typeService {
	public List<VO4Article_type> findAllArticle_type() {
		List<VO4Article_type> listvo = new ArrayList<VO4Article_type>();
		List<DTO4Article_type> listdto = new DAO4Study_article_type()
				.findAllArticle_type();
		for (DTO4Article_type dto : listdto) {
			int type_id = dto.getType_id();
			String type_name = dto.getType_name();
			listvo.add(new VO4Article_type(type_id, type_name));
		}
		return listvo;
	}

	

}
