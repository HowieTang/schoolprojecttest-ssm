package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.MenuModel;

/**
 * 菜单表 增删改查的接口
 * */
@Repository
public interface MenuMapper {
	//列表
	/** 权限添加菜单查询菜单接口 * */
	public List<MenuModel> queryMenuList();
	
	//菜单添加
	public void add(MenuModel menu);
		
	//id
	public MenuModel queryMenuById(String id);
		
	//更新
	public void update(MenuModel menu);
}
