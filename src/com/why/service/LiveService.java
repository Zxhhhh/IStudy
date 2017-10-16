package com.why.service;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import com.why.dao.DAO4Live;
import com.why.dao.DAO4User;
import com.why.dto.DTO4Live;
import com.why.dto.DTO4User;
import com.why.extraException.BaseException;
import com.why.vo.VO4LiveIdQueryParam;
import com.why.vo.VO4LiveTypeQueryParam;
import com.why.vo.VO4LiveShowRtn;
import com.why.vo.VO4UserShowRtn;

/*
 * author:lhy
 */
public class LiveService {
	
	public ArrayList<VO4LiveShowRtn> queryAll() {
		// TODO Auto-generated method stub
		DAO4Live Livedao = new DAO4Live();
		ArrayList<DTO4Live> dtolist = new ArrayList<DTO4Live>();
		ArrayList<VO4LiveShowRtn> volist = new ArrayList<VO4LiveShowRtn>();

		dtolist = Livedao.queryAllLive();
		for(DTO4Live list:dtolist){
			VO4LiveShowRtn voLiveShowRtn = new VO4LiveShowRtn();
			voLiveShowRtn.setLive_id(Integer.toString(list.getLive_id()));
			voLiveShowRtn.setLive_name(list.getLive_name());
			voLiveShowRtn.setLive_author(list.getLive_author());
			voLiveShowRtn.setLive_time((new SimpleDateFormat("yyyy年MM月dd日")).format(list.getLive_time()));
			voLiveShowRtn.setLive_type(Integer.toString(list.getLive_type()));
			voLiveShowRtn.setLive_visitor(Integer.toString(list.getLive_visitor()));
			voLiveShowRtn.setLive_content(list.getLive_content());
			voLiveShowRtn.setLive_gift(Integer.toString(list.getLive_gift()));
			voLiveShowRtn.setLive_pic(list.getLive_pic());
			voLiveShowRtn.setLive_authorintroduction(list.getLive_authorintroduction());
			volist.add(voLiveShowRtn);
			System.out.println(voLiveShowRtn);
		}
		return volist;	
	}
	
	
	public VO4LiveShowRtn queryByLiveId(VO4LiveIdQueryParam liveId) {
		// TODO Auto-generated method stub
		DAO4Live Livedao = new DAO4Live();
		ArrayList<DTO4Live> dtolist = new ArrayList<DTO4Live>();
		VO4LiveShowRtn voLiveShowRtn = new VO4LiveShowRtn();
		dtolist = Livedao.queryByLiveId(liveId);
		for(DTO4Live list:dtolist){
			
			voLiveShowRtn.setLive_id(Integer.toString(list.getLive_id()));
			voLiveShowRtn.setLive_name(list.getLive_name());
			voLiveShowRtn.setLive_author(list.getLive_author());
			voLiveShowRtn.setLive_time((new SimpleDateFormat("yyyy年MM月dd日")).format(list.getLive_time()));
			voLiveShowRtn.setLive_type(Integer.toString(list.getLive_type()));
			voLiveShowRtn.setLive_visitor(Integer.toString(list.getLive_visitor()));
			voLiveShowRtn.setLive_content(list.getLive_content());
			voLiveShowRtn.setLive_gift(Integer.toString(list.getLive_gift()));
			voLiveShowRtn.setLive_pic(list.getLive_pic());
			voLiveShowRtn.setLive_authorintroduction(list.getLive_authorintroduction());
			
		}
		return voLiveShowRtn;	
	}
	
	public ArrayList<VO4LiveShowRtn> queryByVisitor() {
		// TODO Auto-generated method stub
		DAO4Live Livedao = new DAO4Live();
		ArrayList<DTO4Live> dtolist = new ArrayList<DTO4Live>();
		ArrayList<VO4LiveShowRtn> volist = new ArrayList<VO4LiveShowRtn>();

		dtolist = Livedao.queryByVisitor();
		for(DTO4Live list:dtolist){
			VO4LiveShowRtn voLiveShowRtn = new VO4LiveShowRtn();
			voLiveShowRtn.setLive_id(Integer.toString(list.getLive_id()));
			voLiveShowRtn.setLive_name(list.getLive_name());
			voLiveShowRtn.setLive_author(list.getLive_author());
			voLiveShowRtn.setLive_time((new SimpleDateFormat("yyyy年MM月dd日")).format(list.getLive_time()));
			voLiveShowRtn.setLive_type(Integer.toString(list.getLive_type()));
			voLiveShowRtn.setLive_visitor(Integer.toString(list.getLive_visitor()));
			voLiveShowRtn.setLive_content(list.getLive_content());
			voLiveShowRtn.setLive_gift(Integer.toString(list.getLive_gift()));
			voLiveShowRtn.setLive_pic(list.getLive_pic());
			voLiveShowRtn.setLive_authorintroduction(list.getLive_authorintroduction());
			volist.add(voLiveShowRtn);
			
			System.out.println(voLiveShowRtn);
		}
		return volist;

	}
	
	public ArrayList<VO4LiveShowRtn> queryByLiveType(VO4LiveTypeQueryParam volivetype) {
		DAO4Live livedao = new DAO4Live();
		ArrayList<DTO4Live> dtolist = new ArrayList<DTO4Live>();
		ArrayList<VO4LiveShowRtn> volist = new ArrayList<VO4LiveShowRtn>();
		dtolist = livedao.queryByLiveType(Integer.parseInt(volivetype.getLive_type()));
		for(DTO4Live list:dtolist){
			VO4LiveShowRtn voLiveShowRtn = new VO4LiveShowRtn();
			voLiveShowRtn.setLive_id(Integer.toString(list.getLive_id()));
			voLiveShowRtn.setLive_name(list.getLive_name());
			voLiveShowRtn.setLive_author(list.getLive_author());
			voLiveShowRtn.setLive_time((new SimpleDateFormat("yyyy年MM月dd日")).format(list.getLive_time()));
			voLiveShowRtn.setLive_type(Integer.toString(list.getLive_type()));
			voLiveShowRtn.setLive_visitor(Integer.toString(list.getLive_visitor()));
			voLiveShowRtn.setLive_content(list.getLive_content());
			voLiveShowRtn.setLive_gift(Integer.toString(list.getLive_gift()));
			voLiveShowRtn.setLive_pic(list.getLive_pic());
			voLiveShowRtn.setLive_authorintroduction(list.getLive_authorintroduction());
			volist.add(voLiveShowRtn);
			System.out.println(voLiveShowRtn);
		}
		return volist;

	}
	
	public VO4UserShowRtn queryUserByName(String user_name){
		if(user_name!=null){
			DAO4User dao4User = new DAO4User();
			DTO4User dto4User = new DTO4User();
			VO4UserShowRtn vo4UserShowRtn = new VO4UserShowRtn();
			
			dto4User = dao4User.queryByName(user_name);
			vo4UserShowRtn.setUser_id(Integer.toString(dto4User.getUser_id()));
			
			
			return vo4UserShowRtn;
			
			
			
			
			
			
		}
		
		else{
			
			
			throw new BaseException("非法操作!查询参数不能为空");
			
		}

		
	}
	
	
	
	
}
