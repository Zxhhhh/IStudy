package com.why.service;

import java.util.ArrayList;
import java.util.List;

import com.why.dao.DAO4User;
import com.why.dto.DTO4User;
import com.why.extraException.BaseException;
import com.why.vo.VO4UserAddParam;
import com.why.vo.VO4UserFollowAddParam;
import com.why.vo.VO4UserFollowDeleteParam;
import com.why.vo.VO4UserLoginParam;
import com.why.vo.VO4UserShowRtn;
import com.why.vo.VO4UserUpdateParam;
/*
 * author:zxh
 */
public class UserService {

	public String user_register(VO4UserAddParam uap) {

		DAO4User dao_user = new DAO4User();

		String user_name = uap.getUser_name();
		String user_password = uap.getUser_password();
		String user_passwordConfirm = uap.getUser_passwordConfirm();
		String user_email = uap.getUser_email();

		if (user_name != null && user_password != null
				&& user_passwordConfirm != null && user_email != null) {

			if (user_passwordConfirm.equals(user_password)) {
				if (user_email
						.matches("([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4})?")) {

					if (dao_user.queryByName(user_name) == null) {

						DTO4User dto_user = new DTO4User();
						dto_user.setUser_name(user_name);
						dto_user.setUser_password(user_password);
						dto_user.setUser_email(user_email);

						String user_registerRtn = dao_user.add(dto_user);

						return user_registerRtn;
					} else {
						return "4";
					}
				} else {
					return "3";
				}
			} else {
				return "2";
			}
		} else {
			throw new BaseException("非法操作!参数不能为空");
		}

	}

	public String user_login(VO4UserLoginParam ulp) {

		DAO4User dao_user = new DAO4User();

		String user_name = ulp.getUser_name();
		String user_password = ulp.getUser_password();
		String user_checkCode = ulp.getUser_checkCode();
		String randomCode = ulp.getRandomCode();

		if (user_name != null && user_password != null
				&& user_checkCode != null && randomCode != null) {
			if (randomCode.equalsIgnoreCase(user_checkCode)) {
				if (dao_user.queryByName(user_name) != null) {
					DTO4User dto_user = dao_user.queryByName(user_name);
					if (dto_user.getUser_password().equals(user_password)) {
							return "0";
					} else {
						return "1";
					}
				} else {
					return "2";
				}
			} else {
				return "3";
			}
		} else {
			throw new BaseException("非法操作!参数不能为空");
		}
	}
	
	public String user_update(VO4UserUpdateParam uup){
		
		String user_name = uup.getUser_name();
		String user_sex = uup.getUser_sex();
		String user_age = uup.getUser_age();
		String user_email = uup.getUser_email();
		String user_summary = uup.getUser_summary();
		
		if(user_name!=null&&user_sex!=null&&user_age!=null&&user_email!=null&&user_summary!=null){
			if (user_email.matches("([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4})?")){
				DTO4User dto_user = new DAO4User().queryByName(user_name);
				dto_user.setUser_sex(user_sex);
				dto_user.setUser_age(user_age);
				dto_user.setUser_email(user_email);
				dto_user.setUser_summary(user_summary);
				
				String user_updateRtn = new DAO4User().update(dto_user);
				return user_updateRtn;
			}else{
				return "2";
			}
			
			
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
		
	}
	
	
	public VO4UserShowRtn queryByName(String user_name){
		
		if(user_name!=null){
			DTO4User dto_user = new DAO4User().queryByName(user_name);
			if(dto_user!=null){
				VO4UserShowRtn usr = new VO4UserShowRtn();
				
				usr.setUser_id(String.valueOf(dto_user.getUser_id()));
				if(dto_user.getUser_age()==null){usr.setUser_age("δ��д");}else{usr.setUser_age(dto_user.getUser_age());}
				if(dto_user.getUser_email()==null){usr.setUser_email("δ��д");}else{usr.setUser_email(dto_user.getUser_email());}
				usr.setUser_name(dto_user.getUser_name());
				if(dto_user.getUser_pic()==null){usr.setUser_pic("δ��д");}else{usr.setUser_pic(dto_user.getUser_pic());}
				usr.setUser_points(String.valueOf(dto_user.getUser_points()));
				if(dto_user.getUser_sex()==null){usr.setUser_sex("δ��д");}else{usr.setUser_sex(dto_user.getUser_sex());}
				if(dto_user.getUser_summary()==null){usr.setUser_summary("δ��д");}else{usr.setUser_summary(dto_user.getUser_summary());}
				
				return usr;
			}else{
				return new VO4UserShowRtn();
			}
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
	}
	
	public VO4UserShowRtn queryById(String user_id){
		
		if(user_id!=null){
			DTO4User dto_user = new DAO4User().queryById(user_id);
			if(dto_user!=null){
				VO4UserShowRtn usr = new VO4UserShowRtn();
				
				if(dto_user.getUser_age()==null){usr.setUser_age("δ��д");}else{usr.setUser_age(dto_user.getUser_age());}
				if(dto_user.getUser_email()==null){usr.setUser_email("δ��д");}else{usr.setUser_email(dto_user.getUser_email());}
				usr.setUser_name(dto_user.getUser_name());
				if(dto_user.getUser_pic()==null){usr.setUser_pic("δ��д");}else{usr.setUser_pic(dto_user.getUser_pic());}
				usr.setUser_points(String.valueOf(dto_user.getUser_points()));
				if(dto_user.getUser_sex()==null){usr.setUser_sex("δ��д");}else{usr.setUser_sex(dto_user.getUser_sex());}
				if(dto_user.getUser_summary()==null){usr.setUser_summary("δ��д");}else{usr.setUser_summary(dto_user.getUser_summary());}
				
				return usr;
			}else{
				return new VO4UserShowRtn();
			}
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
	}
	
	//上传头像业务
	public String updateLogo(String user_account,String user_pic){
		
		if(user_account!=null&&user_pic!=null){
			DTO4User dto_user = new DAO4User().queryByName(user_account);
			if(dto_user!=null){
			dto_user.setUser_pic(user_pic);
			String updateLogoRtn = new DAO4User().update(dto_user);
			return updateLogoRtn;
			}else{
				return "2";
			}
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
	}
	
	//添加关注
	public String fllowAdd(VO4UserFollowAddParam ufap){
		
		String myid = ufap.getMyid();
		String otherid = ufap.getOtherid();
		
		if(myid!=null&&otherid!=null){
			
			String followAddRtn = new DAO4User().followUser(Integer.parseInt(myid), Integer.parseInt(otherid));
			return followAddRtn;
			
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
		
	}
	
	//删除关注
	public String followDelete(VO4UserFollowDeleteParam ufdp){
		
		String myid = ufdp.getMyid();
		String otherid = ufdp.getOtherid();
		
		if(myid!=null&&otherid!=null){
			
			String followAddRtn = new DAO4User().notfollowUser(Integer.parseInt(myid), Integer.parseInt(otherid));
			return followAddRtn;
			
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
		
	}
	
	//查询好友
	public List<VO4UserShowRtn> followQuery(String myid){
		
		List<VO4UserShowRtn> usrList = new ArrayList<VO4UserShowRtn>();
		List<DTO4User> dto_userList = new DAO4User().queryMyFriends(Integer.parseInt(myid));
		
		for(DTO4User dto_user:dto_userList){
			VO4UserShowRtn usr = new VO4UserShowRtn();
			usr.setUser_age(dto_user.getUser_age());
			usr.setUser_email(dto_user.getUser_email());
			usr.setUser_id(String.valueOf(dto_user.getUser_id()));
			usr.setUser_name(dto_user.getUser_name());
			usr.setUser_pic(dto_user.getUser_pic());
			usr.setUser_points(String.valueOf(dto_user.getUser_points()));
			usr.setUser_sex(dto_user.getUser_sex());
			usr.setUser_summary(dto_user.getUser_summary());
			usrList.add(usr);
		}
		
		return usrList;
	}
	
	//判断用户myid是否关注了用户otherid
	public boolean isFollow(String myid,String otherid){
		
		if(myid!=null&&otherid!=null){
			boolean isFollowRtn = new DAO4User().isFriend(Integer.parseInt(myid),Integer.parseInt(otherid));
			return isFollowRtn;
		}else{
			throw new BaseException("非法操作!参数不能为空");
		}
	}
	
	
	
	

}