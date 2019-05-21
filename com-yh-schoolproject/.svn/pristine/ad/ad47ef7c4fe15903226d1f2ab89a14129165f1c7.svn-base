package com.yh.ws.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.alibaba.dubbo.common.utils.StringUtils;
import com.yh.api.service.MenuService;
import com.yh.model.sys.MenuModel;
import com.yh.ws.mapper.MenuMapper;
/**
 * 
 * 菜单实现类
 * */
@Service("menuService")
public class MenuServiceImpl implements MenuService {

	@Resource
	private MenuMapper menuMapper;
	
	//菜单列表
	@Override
	public List<MenuModel> queryMenuList() {
		List<MenuModel> menus =  menuMapper.queryMenuList();
		List<MenuModel> rootmenus = new ArrayList<>();
		for(MenuModel menu:menus){
			if(StringUtils.isEmpty(menu.getPid()) || "0".equals(menu.getPid())){
				rootmenus.add(menu);
			}
		}
		for(MenuModel c :rootmenus){
			c.setCmenus(getMenuTree(c,menus));
		}
		return rootmenus;
	}
	
	public List<MenuModel> getMenuTree(MenuModel menu,List<MenuModel> menus){
		List<MenuModel> childrenMenus = new ArrayList<>();
		
		for(MenuModel m:menus){
			if (m.getPid().equals(menu.getMenu_id())) {
				childrenMenus.add(m);
			}
		}
		for(MenuModel c:childrenMenus){
			c.setCmenus(getMenuTree(c, menus));
		}
		if (childrenMenus == null || childrenMenus.size()<=0) {
			return null;
		}
			return childrenMenus;
	}

	
	//权限添加菜单
	@Override
	public List<Map<String, String>> queryListToMap() {
		List<MenuModel> menus =  menuMapper.queryMenuList();
		
		List<Map<String, String>> listM =  new ArrayList<>();
		for(MenuModel m:menus){
			Map<String, String> map =  new HashMap<>();
			map.put("id", m.getMenu_id());
			map.put("pId", m.getPid());
			map.put("name", m.getMenu_name());
			listM.add(map);
		}
		return listM;
	}
	
	//添加菜单
	@Override
	public void add(MenuModel menu) {
		menuMapper.add(menu);
	}


	@Override
	public MenuModel queryMenuById(String id) {
		return menuMapper.queryMenuById(id);
	}

	@Override
	public void update(MenuModel menu) {
		menu.setUpdate_time(new Date());
		menu.setFlag_del(0);
		menuMapper.update(menu);
	}
}
