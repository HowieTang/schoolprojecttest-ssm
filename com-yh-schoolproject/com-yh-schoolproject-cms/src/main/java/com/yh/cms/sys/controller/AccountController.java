package com.yh.cms.sys.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.AccountService;
import com.yh.api.service.RoleService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;

@Controller
@RequestMapping("/account")
public class AccountController {
     
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private RoleService roleService;
	
	/**查询账户列表和分页  */
	 @RequestMapping("queryAccountList")
	 public ModelAndView queryAccountList(PageModel page,AccountModel account){
		PageModel pages=accountService.queryAccountList(page,account);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("account", account);
		map.put("page", pages);
		return new ModelAndView("sys/account/Account_List","map",map);
	}
	 
		/**账户添加之前  */
	 @RequestMapping("bfaddOrUpdate")
		public ModelAndView bfAddOrUpdate(AccountModel accountModel){
		 String accountId = accountModel.getAccountId();
		 AccountModel account = new AccountModel();
			if(!StringUtils.isEmpty(accountId)){
				account = accountService.queryAccountById(accountId);
			}
			
			List<RoleModel> roles = roleService.queryList();
			Map<String, Object> resultMap =   new HashMap<String, Object>();
			resultMap.put("account", account);
			resultMap.put("roles", roles);
			return  new ModelAndView("sys/account/Account_add_update2","result",resultMap) ;
		}
	 
		/** 账户添加和修改方法 */
		@RequestMapping("AddOrUpdate")
		public ModelAndView AddOrUpdate(PageModel page,AccountModel account){
			if(!StringUtils.isEmpty(account.getAccountId())){
				accountService.update(account);
			}else{
				account.setAccountId(UUID.randomUUID()+"");
				account.setCreateTime(new Date());
				account.setUpdateTime(new Date());
				account.setState(0);
				accountService.save(account);
	           String accountId =  account.getAccountId();
				Map<String, String> map = new HashMap<String, String>();
				map.put("accountId", accountId);
				List<String> rids = account.getRoleId();
				for(String rid:rids){
				map.put("id", UUID.randomUUID()+"");
				map.put("rid",rid);
				accountService.accountBindrole(map);
			       }
			 }
			return  queryAccountList(page,new AccountModel());
		}
		
		/** 账户删除方法 */
		@RequestMapping("delete")
		public ModelAndView delete(PageModel page,AccountModel account){
			accountService.delete(account);
		     return  queryAccountList(page,new AccountModel());
	        }
			
}
