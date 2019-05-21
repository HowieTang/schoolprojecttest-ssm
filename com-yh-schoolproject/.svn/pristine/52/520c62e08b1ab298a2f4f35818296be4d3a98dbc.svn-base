package com.yh.api.service;

import java.util.Map;

import java.util.List;

import com.yh.model.page.PageModel;
import com.yh.model.sys.PowerModel;
import com.yh.model.sys.RoleModel;

/**
 * 系统管理权限功能接口
 * */
public interface PowerService {

	/** 权限列表接口 * */
	public PageModel queryPowerList(PageModel page,PowerModel power);
	
	/** 权限删除接口 * */
	public void deleteById(PowerModel power);
	
	/** 权限添加修改接口 * */
	public int addOrUpadate(PowerModel power,String [] mids);

	/** 根据ID查询权限列表接口 * */
	public PowerModel queryPowerById(String powerId);
	
	/** 权限添加菜单接口 * */
	public void powerBindMenu(Map<String, String> map);
	

	/** 角色添加权限查询权限列表 * */
	public List<PowerModel> queryList();
	
}
