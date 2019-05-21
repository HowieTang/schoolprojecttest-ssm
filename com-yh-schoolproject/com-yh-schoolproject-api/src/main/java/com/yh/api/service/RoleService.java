package com.yh.api.service;


import java.util.List;



import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;
/**
 * 系统管理功能接口
 * */
public interface RoleService {

	/** 角色列表接口 * */
	public PageModel queryRoleList(PageModel page,RoleModel role);

	/*关联查询列表集合*/
	public List<RoleModel> queryList();
	
	/*根据id查询列表*/
	public RoleModel queryRoleById(String rid);

	/*添加*/
	public void addRole(RoleModel role);

	/*删除*/
	public void deleteRoleById(RoleModel role);
	
	/*修改*/
	public void update(RoleModel role);

	/*角色关联权限*/
	public void roleBindpower(Map<String, String> String);
	
	//根据当前登录人查询绑定的角色
	public RoleModel queryRoleByAid(AccountModel accountModel);
	

}
