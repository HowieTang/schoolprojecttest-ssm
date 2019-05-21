package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.AccountModel;

@Repository
public interface AccountMapper {
     
	    public List<AccountModel> queryAccountList(Map<String, Object> map);
	    public Integer queryDataCount(AccountModel account);
	
		//添加
		public  void save(AccountModel account);
		//修改
		public  void update(AccountModel account);
		
		public AccountModel queryAccountById(String accountId);
		
		public void delete(AccountModel account);
		
		public void accountBindrole(Map<String, String> map);
		
		/**学生老师绑定账户接口  */
		/** 教学笔记绑定账户接口 * */
		public List<AccountModel> queryList();
		
		public AccountModel queryNameById(AccountModel accountModel);

		
		public void voteBindAccount(Map<String, String> string);
		
		
		
		


		public AccountModel queryLoginName(AccountModel accountModel);
		

}
