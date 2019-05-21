package com.yh.cms.sys.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.yh.api.service.MenuService;
import com.yh.model.sys.MenuModel;
import net.sf.json.JSONArray;
/**
 * 菜单控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	//菜单列表
	@RequestMapping("queryMenuList")
	public ModelAndView queryMenuList(){
		List<MenuModel> mList=menuService.queryMenuList();
		JSONArray json=JSONArray.fromObject(mList);
		
		return new ModelAndView("sys/menu/menu_list","mList",json.toString());
	}
	
	@RequestMapping("bfAddOrUpdate")
	public ModelAndView bfAddOrUpdate(String mid){
		MenuModel mm = new MenuModel();
		if(StringUtils.isNotEmpty(mid)){
			mm = menuService.queryMenuById(mid);
		}
		return new ModelAndView("sys/menu/menu_add","menu",mm);
	}
	
	@RequestMapping("addOrUpdate")
	public ModelAndView AddOrUpdate(MenuModel menu){
		if(StringUtils.isNotEmpty(menu.getMenu_id())){
			menuService.update(menu);
		}else{
			menu.setMenu_id((UUID.randomUUID()+""));
			menu.setCreate_time(new Date());
			menu.setUpdate_time(new Date());
			menu.setFlag_del(0);
			menuService.add(menu);
		}
		return queryMenuList();
	}
}
