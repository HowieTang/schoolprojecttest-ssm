package com.yh.cms.teacher.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.DicService;
import com.yh.api.service.teacher.CircularService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.CircularModel;
import com.yh.model.teacher.StudentModel;


/**
 * 公告控制器
 * */

@Controller //此注解标识这是一个控制器
@RequestMapping("/circular")
public class CircularController {

	@Autowired
	private CircularService circularService;
	
	@Autowired
	private DicService dicService;
	
	/** 查询公告列表  * */
	@RequestMapping("queryCircularList")
	public ModelAndView queryCircularList(PageModel page,CircularModel circular){
		PageModel pages=circularService.queryCircularList(page, circular);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("circular", circular);
		map.put("page", pages);
		return new ModelAndView("teacher/circular_list","map",map);
	}
	

	/** 公告删除* */
	@RequestMapping("deleteCircular")
	public ModelAndView deleteCircular(PageModel page,CircularModel circular){
		circularService.deleteCircular(circular);
		return queryCircularList(page,new CircularModel());
	}
	
	/** 批量公告删除  * */
	@RequestMapping("/deleteManyCircularById")
	public ModelAndView deleteManyCircularById(PageModel<T> page, CircularModel circular) {
		String arr[] = circular.getCircularIds();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			circular.setCircularId(xString);
			circularService.deleteCircular(circular);
		}
		
		return queryCircularList(page, new CircularModel());
	}
	
	/** 公告添加修改之前* */
	@RequestMapping("bfAddOrUpdate")
	public ModelAndView bfAddOrUpdate(String circularId){
		CircularModel cm = new CircularModel();
		if(StringUtils.isNotEmpty(circularId)){
			cm = circularService.queryCircularById(circularId);
		}
		
		//查询出公告类型返回至添加页面
		List<DicModel> dm = dicService.queryCircularList();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("circular", cm);
		resultMap.put("dm", dm);
		return new ModelAndView("teacher/circular_addOrUpdate","result",resultMap);
		
	}
	
	/** 公告添加修改* */
	@RequestMapping("addOrUpdate")
	public ModelAndView AddOrUpdate(PageModel page,CircularModel circular){
		circularService.addCircular(circular);
		return queryCircularList(page,new CircularModel());
	}
	
	/** 公告查看之前* */
	@RequestMapping("bfCircularLook")
	public ModelAndView bfCircularLook(String circularId){
		CircularModel cm = new CircularModel();
		if(StringUtils.isNotEmpty(circularId)){
			cm = circularService.queryCircularById(circularId);
		}
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("circular", cm);
		return new ModelAndView("teacher/circular_listLook","result",resultMap);
		
	}
	
	/** 公告查看* */
	@RequestMapping("circularLook")
	public ModelAndView circularLook(PageModel page,CircularModel circular){
		return queryCircularList(page,new CircularModel());
	}
}
