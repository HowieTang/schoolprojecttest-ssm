package com.yh.ws.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yh.api.service.LoginService;
import com.yh.model.login.LoginModel;
import com.yh.ws.mapper.LoginMapper;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Resource
	private LoginMapper loginMapper;
	
	@Override
	public List<LoginModel> checkLogin(String loginName, String pwd) {
		List<LoginModel> account=loginMapper.checkLogin(loginName,pwd);
		return account;
	}

	@Override
	public void modifyPasswordByUsername(String loginName, String newpassword) {
		LoginModel login = loginMapper.findUserByLoginName(loginName);
		/*login.setLoginName(loginName);*/
		login.setPwd(newpassword);
		loginMapper.modifyPasswordByUsername(login);
		
	}

	@Override
	public String findUserByLoginName(String loginName) {
		return loginMapper.findUserByLoginName(loginName).getPwd();
	}

	//判断用户是否存在
	@Override
	public boolean isUserExist(String loginName) {
			if (loginMapper.findUserByLoginName(loginName) == null) {
				return false;
			} else {
				return true;
			}
	   }

	@Override
	public List<LoginModel> queryList() {
	
		return loginMapper.queryList();
	}
	
	}
	
