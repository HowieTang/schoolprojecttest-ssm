package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yh.api.service.AccountService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.ws.mapper.AccountMapper;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

	@Resource
	private AccountMapper accountMapper;
	
	@Override
	public PageModel queryAccountList(PageModel page, AccountModel account) {
        Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=accountMapper.queryDataCount(account);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		   }
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("account", account);
		map.put("page", page);
		
		List<AccountModel> ulist=accountMapper.queryAccountList(map);
		page.setList(ulist);
		return page;
	}

	@Override
	public AccountModel queryAccountById(String accountId) {
		return accountMapper.queryAccountById(accountId);
	}

	@Override
	public void update(AccountModel account) {
		accountMapper.update(account);
	}

	@Override
	public void save(AccountModel account) {
		accountMapper.save(account);
	}

	@Override
	public void delete(AccountModel account) {
		accountMapper.delete(account);	
	}

	@Override
	public void accountBindrole(Map<String, String> map) {
		accountMapper.accountBindrole(map);
	}

	/**学生老师绑定账户 查询账户表*/
	/** 教学笔记绑定账户接口实现 * */
	@Override
	public List<AccountModel> queryList() {
		return accountMapper.queryList();
	}

	@Override
	public AccountModel queryNameById(AccountModel accountModel) {
		return  accountMapper.queryNameById(accountModel);
		
		
	}

	@Override
	public AccountModel queryLoginName(AccountModel accountModel) {
		return  accountMapper.queryLoginName(accountModel);
	}



	

}
