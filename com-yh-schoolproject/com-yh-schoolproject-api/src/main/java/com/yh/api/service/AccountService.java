package com.yh.api.service;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;
import com.yh.model.teacher.TeacherModel;

public interface AccountService {
	
	/** 查询账户列表，分页 接口*/
	public PageModel queryAccountList(PageModel page,AccountModel account);
	/**查询account表的ID  */
	public AccountModel queryAccountById(String accountId);
	/** 账户更新 接口*/
	public void update(AccountModel account);
	/** 账户添加 接口*/
	public void save(AccountModel account);
	/** 账户删除接口 */
	public void delete(AccountModel account);
	/**账户关联角色接口  */
	public void accountBindrole(Map<String, String> map);
	/**学生老师绑定账户接口  */
	/** 教学笔记绑定账户接口 * */
	public List<AccountModel> queryList();
	
	public AccountModel queryNameById(AccountModel accountModel);
	
	public AccountModel queryLoginName(AccountModel accountModel);

	

   
}
