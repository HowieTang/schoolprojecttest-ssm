package com.yh.api.service;

import java.util.List;

import com.yh.model.login.LoginModel;
import com.yh.model.sys.AccountModel;


public interface LoginService {

	
	//实现登录方法
	public List<LoginModel> checkLogin(String loginName,String pwd);
	
	 public void modifyPasswordByUsername(String loginName, String newpassword);
	 
	 public String findUserByLoginName(String loginName);

	 public boolean isUserExist(String loginName);
	 
	 public List<LoginModel> queryList();
}
