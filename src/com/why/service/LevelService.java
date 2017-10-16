package com.why.service;
/*
 * author:way
 */
import java.util.ArrayList;
import java.util.List;

import com.why.dao.DAO4Level;
import com.why.dto.DTO4Level;
import com.why.vo.VO4Level;

public class LevelService {
	public List<VO4Level> fingAllLevel(){

		List<VO4Level> listvo = new ArrayList<VO4Level>();
		List<DTO4Level> listdto = new DAO4Level().findAllLevel();
		for (DTO4Level dto : listdto) {
				int level_id = dto.getLevel_id();
				String level_name = dto.getLevel_name();
			listvo.add(new VO4Level(level_id, level_name));
		}
		return listvo;
	
	}
}
