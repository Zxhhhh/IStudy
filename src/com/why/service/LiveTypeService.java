package com.why.service;

import java.util.ArrayList;
import java.util.List;

import com.why.dao.DAO4LiveType;
import com.why.dto.DTO4LiveType;
import com.why.vo.VO4LiveTypeShowRtn;

public class LiveTypeService {

	public List<VO4LiveTypeShowRtn> queryAllLiveType(){
		DAO4LiveType liveTypedao  = new DAO4LiveType();//��ʼ��
	//��ʼ��
		
		
		List<DTO4LiveType> dtolivetype = new ArrayList<DTO4LiveType>();//��ʼ������
		
		List<VO4LiveTypeShowRtn> voLiveTypeShowRtns = new ArrayList<VO4LiveTypeShowRtn>();
		
		dtolivetype = liveTypedao.queryAllLiveType();
		
		
		for(int i= 0;i<dtolivetype.size();i++){
			VO4LiveTypeShowRtn vo4LiveTypeShowRtn = new VO4LiveTypeShowRtn();
			vo4LiveTypeShowRtn.setType_id(Integer.toString(dtolivetype.get(i).getType_id()));
			vo4LiveTypeShowRtn.setType_name(dtolivetype.get(i).getType_name());
			voLiveTypeShowRtns.add(vo4LiveTypeShowRtn);
			System.out.println(vo4LiveTypeShowRtn);
		}
			
		return voLiveTypeShowRtns;
		
		
		
		
	}
	public List<VO4LiveTypeShowRtn> queryLiveTypeById(String id){
		DAO4LiveType liveTypedao  = new DAO4LiveType();//��ʼ��
	//��ʼ��
		
		
		List<DTO4LiveType> dtolivetype = new ArrayList<DTO4LiveType>();//��ʼ������
		
		List<VO4LiveTypeShowRtn> voLiveTypeShowRtns = new ArrayList<VO4LiveTypeShowRtn>();
		
		dtolivetype = liveTypedao.queryLiveTypeById(id);
		
		
		for(int i= 0;i<dtolivetype.size();i++){
			VO4LiveTypeShowRtn vo4LiveTypeShowRtn = new VO4LiveTypeShowRtn();
			vo4LiveTypeShowRtn.setType_id(Integer.toString(dtolivetype.get(i).getType_id()));
			vo4LiveTypeShowRtn.setType_name(dtolivetype.get(i).getType_name());
			voLiveTypeShowRtns.add(vo4LiveTypeShowRtn);
			System.out.println(vo4LiveTypeShowRtn);
		}
			
		return voLiveTypeShowRtns;
		
		
		
		
	}
	
	public String queryLiveType(String id){
		DAO4LiveType liveTypedao  = new DAO4LiveType();//��ʼ��
	    
	
		return  liveTypedao.queryLive(id);
		
		
		
		
	}
	
	
	
}
