package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;

@Repository
public interface RoleMapper {

	/** 角色列表接口 * */
	public List<RoleModel> queryRoleList(Map<String, Object> map);
	
	/** 角色分页接口 * */
	public Integer queryRoleDataCount(RoleModel role);

	/*查询列表*/
	public List<RoleModel> queryList();

	/*查询id*/
	public RoleModel queryRoleById(String rid);

	/*添加*/
	public void addRole(RoleModel role);
	
	/*删除*/
	public void deleteRoleById(RoleModel role);
	
	/*修改*/
	public void updateRole(RoleModel role);

	/*角色关联权限*/
	public void roleBindpower(Map<String, String> string);
	
	//根据当前登录人查询绑定的角色
	public RoleModel queryRoleByAid(AccountModel accountModel);
}
