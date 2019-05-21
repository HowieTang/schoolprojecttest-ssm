package com.yh.cms.sys.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ctc.wstx.util.StringUtil;
import com.yh.api.service.DicService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.TeacherModel;

@Controller // 此注解标识这是一个控制器
@RequestMapping("/dic")
public class DicController {

	@Autowired
	private DicService sysService;

	@RequestMapping("queryDicList")
	public ModelAndView queryUserList(PageModel<T> page, DicModel dic) {
		PageModel<T> pages = sysService.queryDicList(page, dic);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dic", dic);
		map.put("page", pages);
		return new ModelAndView("sys/dic/dicList", "map", map);
	}

	@RequestMapping("bfaddOrUpdate")
	public String bfaddOrUpdate(DicModel dic) {
		return "sys/dic/addOrUpdate";
	}

	@RequestMapping("addDic")
	public ModelAndView addTeacher(PageModel<T> page, DicModel dic) {
		dic.setDid(UUID.randomUUID().toString());
		sysService.addDic(dic);
		return queryUserList(page, new DicModel());
	}

	@RequestMapping("/deleteDicById")
	public ModelAndView deleteDicById(PageModel<T> page, DicModel dic) {
		sysService.deleteDicById(dic);
		return queryUserList(page,  new DicModel());
	}
	@RequestMapping("/deleteManyDicById")
	public ModelAndView deleteManyDicById(PageModel<T> page, DicModel dic) {
		String arr[] = dic.getDids();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			dic.setDid(xString);
			sysService.deleteDicById(dic);
		}
		
		return queryUserList(page,  new DicModel());
	}
}
