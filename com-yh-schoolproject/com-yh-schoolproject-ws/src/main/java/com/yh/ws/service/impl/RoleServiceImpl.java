package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.RoleService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;
import com.yh.ws.mapper.RoleMapper;

@Service("roleService")
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;
	
	/** 角色列表分页接口实现 * */
	public PageModel queryRoleList(PageModel page, RoleModel role) {
		Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=roleMapper.queryRoleDataCount(role);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("role", role);
		map.put("page", page);
		
		List<RoleModel> roles=roleMapper.queryRoleList(map);
		page.setList(roles);
		return page;
	}

	/*查询列表*/
	@Override
	public List<RoleModel> queryList() {
		return roleMapper.queryList();
		
	}
	

	/*查询id*/
	@Override
	public RoleModel queryRoleById(String rid) {
		return roleMapper.queryRoleById(rid);
	}

	/*添加*/
	@Override
	public void addRole(RoleModel role) {
		roleMapper.addRole(role);
		
	}

	/*删除*/
	@Override
	public void deleteRoleById(RoleModel role) {
		roleMapper.deleteRoleById(role);		
	}

	/*修改*/
	@Override
	public void update(RoleModel role) {
		roleMapper.updateRole(role);
	}

	@Override
	public void roleBindpower(Map<String, String> String) {
		roleMapper.roleBindpower(String);
	}

	@Override
	public RoleModel queryRoleByAid(AccountModel accountModel) {
		return roleMapper.queryRoleByAid(accountModel);
	}
}
