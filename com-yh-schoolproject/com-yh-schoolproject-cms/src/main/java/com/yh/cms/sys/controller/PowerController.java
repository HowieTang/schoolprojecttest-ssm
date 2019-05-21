package com.yh.cms.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.MenuService;
import com.yh.api.service.PowerService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.sys.PowerModel;

import net.sf.json.JSONArray;

/**
 * 系统管理权限控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/power")
public class PowerController {
	
	@Autowired
	private PowerService powerService;
	
	@Autowired  
	private MenuService menuService;

	/** 查询权限列表  * */
	@RequestMapping("queryPowerList")
	public ModelAndView queryPowerList(PageModel page,PowerModel power){
		PageModel pages=powerService.queryPowerList(page, power);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("power", power);
		map.put("page", pages);
		return new ModelAndView("sys/power/power_list","map",map);
	}
	
	/** 权限删除  * */
	@RequestMapping("delete")
	public ModelAndView delete(PageModel page,PowerModel power){
		powerService.deleteById(power);
		return queryPowerList(page,new PowerModel());
	}
	
	/** 批量权限删除  * */
	@RequestMapping("/deleteManyPowerById")
	public ModelAndView deleteManyPowerById(PageModel<T> page, PowerModel power) {
		String arr[] = power.getPowerIds();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			power.setPowerId(xString);
			powerService.deleteById(power);
		}
		
		return queryPowerList(page, new PowerModel());
	}
	
	/** 权限添加修改之前  * */
	@RequestMapping("bfAddOrUpdate")
	public ModelAndView bfAddOrUpdate(String pid){
		PowerModel pm = new PowerModel();
		if(StringUtils.isNotEmpty(pid)){
			pm = powerService.queryPowerById(pid);
		}
		List<Map<String, String>> mm = menuService.queryListToMap();
		JSONArray json =JSONArray.fromObject(mm);
		Map<String,Object> result = new HashMap<>();
		result.put("power", pm);
		result.put("menus", json);
		return new ModelAndView("sys/power/addOrUpdate","result",result);
	}
	
	/** 权限添加修改  * */
	@RequestMapping("/addOrUpdate")
	public ModelAndView addOrUpdate(PowerModel power,String mids){
		
		mids = mids.substring(0,mids.length());
		String [] midArray = mids.split(",");
		
		powerService.addOrUpadate(power, midArray);
		return queryPowerList(new PageModel<PowerModel>(),new PowerModel());
	}
}
