package com.yh.cms.teacher.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.AccountService;
import com.yh.api.service.DicService;
import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.TeacherModel;

/**
 * 老师控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/teacher")
public class TeacherController {

	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private DicService dicService;
	
	@RequestMapping("queryTeacherList")
	public ModelAndView queryUserList(PageModel<T> page,TeacherModel teacher){
		PageModel<T> pages=teacherService.queryTeacherList(page,teacher);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("teacher", teacher);
		map.put("page", pages);
		return new ModelAndView("teacher/teacherList","map",map);
	}

	
	//添加之前
	@RequestMapping("bfAddTeacher")
	public ModelAndView bfaddOrUpdate(String tid){
		TeacherModel tm = new TeacherModel();
		if(StringUtils.isNotEmpty(tid)){
			tm = teacherService.queryTeacherById(tid);
		}
		//查询出所有账户返回至添加页面
		List<AccountModel> accounts = accountService.queryList();
		
		//查询出公告类型返回至添加页面
		List<DicModel> dm = dicService.querybusinessList();

		Map<String, Object> result= new HashMap<>();
		result.put("teacher", tm);
		result.put("account", accounts);
		result.put("dm", dm);
		return new ModelAndView("teacher/TeacherAdd","result",result);
	}
	//添加
	@RequestMapping("addTeacher")
	public ModelAndView bfAddOrUpdate(PageModel page,TeacherModel teacher){
		teacherService.addTeacher(teacher);
		return queryUserList(page,new TeacherModel());
	}
			

	//查看之前
	@RequestMapping("bfLookTeacher")
	public ModelAndView bfLookTeacher(String tid){
		TeacherModel tm = new TeacherModel();
		if(StringUtils.isNotEmpty(tid)){
			tm = teacherService.queryTeacherById(tid);
		}
		Map<String, Object> result= new HashMap<>();
		result.put("teacher", tm);
		return new ModelAndView("teacher/teacherLook","result",result);
	}
	//查看
	@RequestMapping("lookTeacher")
	public ModelAndView addLookTeacher(PageModel page,TeacherModel teacher){
		//teacherService.addTeacher(teacher);
		return queryUserList(page,new TeacherModel());
	}
	//单个删除
	@RequestMapping("/deleteTeacherById")
	public ModelAndView deleteTeacherById(PageModel<T> page,TeacherModel teacher){
		teacherService.deleteTeacherById(teacher);
		return queryUserList(page,new TeacherModel());
	}
	//批量删除
	@RequestMapping("/deleteManyTeacherById")
	public ModelAndView deleteManyTeacherById(PageModel<T> page, TeacherModel teacher) {
		String arr[] = teacher.getTids();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			teacher.setTeacherId(xString);
			teacherService.deleteTeacherById(teacher);
		}
		return queryUserList(page,new TeacherModel());
	}
//学生写信添加老师
	@RequestMapping("queryList")
	public ModelAndView queryList(PageModel<T> page,TeacherModel teacher){
		PageModel<T> pages=teacherService.queryTeacherList(page,teacher);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("teacher", teacher);
		map.put("page", pages);
		return new ModelAndView("student/TeacherList","map",map);
	}

	
}
