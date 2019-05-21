package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.PowerModel;

/**
 * 系统管理权限增删改查接口
 * */
@Repository
public interface PowerMapper {

	
	/** 权限列表接口 * */
	public List<PowerModel> queryPowerList(Map<String, Object> map);
	
	/** 权限列表分页接口 * */
	public Integer queryPowerDataCount(PowerModel power);
	
	/** 权限删除接口 * */
	public void deleteById(PowerModel power);
	
	/** 权限修改接口 * */
	public int update(PowerModel power);
	
	/** 权限添加接口 * */
	public int addPower(PowerModel power);
	
	/** 根据ID查询权限列表接口 * */
	public PowerModel queryPowerById(String powerId);
	
	/** 权限添加菜单接口 * */
	public void powerBindMenu(Map<String, String> map);

	/** 角色添加权限查询权限列表 * */
	public List<PowerModel> queryList();

}
