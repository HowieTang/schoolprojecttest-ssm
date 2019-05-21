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
import com.yh.api.service.teacher.CclassService;
import com.yh.api.service.teacher.StudentService;
import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.DicModel;
import com.yh.model.sys.PowerModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.CircularModel;
import com.yh.model.teacher.StudentModel;

/**
 * 学生控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/student")
public class StudentControler {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private CclassService cclassService;
	
	/** 查询学生列表  * */
	@RequestMapping("queryStudentList")
	public ModelAndView queryUserList(PageModel page,StudentModel student){
		PageModel pages=studentService.queryStudentList(page,student);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("student", student);
		map.put("page", pages);
		return new ModelAndView("teacher/student_list","map",map);
	}
	
	/** 学生删除* */
	@RequestMapping("deleteStudent")
	public ModelAndView deleteStudent(PageModel page,StudentModel student){
		studentService.deleteStudent(student);
		return queryUserList(page,new StudentModel());
	}
	
	/** 批量学生删除  * */
	@RequestMapping("/deleteManyStudentById")
	public ModelAndView deleteManyStudentById(PageModel<T> page, StudentModel student) {
		String arr[] = student.getStudentIds();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			student.setStudentId(xString);
			studentService.deleteStudent(student);
		}
		
		return queryUserList(page, new StudentModel());
	}
	
	/** 学生添加之前* */
	@RequestMapping("bfAddStudent")
	public ModelAndView bfAddStudent(String studentId){
		StudentModel sm = new StudentModel();
		if(StringUtils.isNotEmpty(studentId)){
			sm = studentService.queryStudentById(studentId);
		}
		//查询出所有账户返回至添加页面
		List<AccountModel> am = accountService.queryList();
		List<CclassModel> cm = cclassService.queryList();
		Map<String, Object> resultMap= new HashMap<>();
		resultMap.put("student", sm);
		resultMap.put("account", am);
		resultMap.put("cclass", cm);
		return new ModelAndView("teacher/studentAdd","result",resultMap);
	}
	
	/** 学生添加* */
	@RequestMapping("addStudent")
	public ModelAndView addStudent(PageModel page,StudentModel student){
		studentService.addStudent(student);
		return queryUserList(page,new StudentModel());
	}
	
	/** 学生查看之前* */
	@RequestMapping("bfStudentLook")
	public ModelAndView bfStudentLook(String studentId){
		StudentModel sm = new StudentModel();
		if(StringUtils.isNotEmpty(studentId)){
			sm = studentService.queryStudentById(studentId);
		}
		Map<String, Object> resultMap= new HashMap<>();
		resultMap.put("student", sm);
		return new ModelAndView("teacher/student_listLook","result",resultMap);
	}
	
	/** 学生查看* */
	@RequestMapping("studentLook")
	public ModelAndView studentLook(PageModel page,StudentModel student){
		return queryUserList(page,new StudentModel());
	}
	
	/** 查询没有班级的学生列表  * */
	@RequestMapping("queryNoClassList")
	public ModelAndView queryNoClassList(PageModel page,StudentModel student){
		PageModel pages=studentService.queryNoClassList(page, student);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("student", student);
		map.put("page", pages);
		return new ModelAndView("teacher/student_noclass_list","map",map);
	}
	
	/** 写信添加学生列表* */
	@RequestMapping("queryList")
	public ModelAndView queryList(PageModel page,StudentModel student){
		PageModel pages=studentService.queryStudentList(page,student);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("student", student);
		map.put("page", pages);
		return new ModelAndView("student/studentList","map",map);
	}
	
	/** 学生写信添加之前* */
	@RequestMapping("bfAdd")
	public ModelAndView bfAdd(String studentId){
		StudentModel sm = new StudentModel();
		if(StringUtils.isNotEmpty(studentId)){
			sm = studentService.queryStudentById(studentId);
		}
		
		Map<String, Object> resultMap= new HashMap<>();
		resultMap.put("student", sm);
		
		return new ModelAndView("student/studentadd","result",resultMap);
	}
	
	/** 学生写信添加* */
	@RequestMapping("addStudentw")
	public ModelAndView addStudentw(PageModel page,StudentModel student){
		student.getStudentId();
		studentService.update(student);
		return new ModelAndView("student/stuWrite_add_update","student",student);
	}
	
}
