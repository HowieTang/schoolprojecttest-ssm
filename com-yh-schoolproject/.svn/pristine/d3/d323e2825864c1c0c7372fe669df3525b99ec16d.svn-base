package com.yh.ws.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yh.model.login.LoginModel;

@Repository
public interface LoginMapper {

	 public List<LoginModel> checkLogin(String loginName,String pwd);
	 
	 public int modifyPasswordByUsername(LoginModel login);
	 
	 public LoginModel findUserByLoginName(@Param("loginName")String loginName);
	 
	 public List<LoginModel> queryList();

}
