package com.yh.cms.teacher.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.teacher.CourseService;
import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.CircularModel;
import com.yh.model.teacher.CourseModel;
import com.yh.model.teacher.StudentModel;
import com.yh.model.teacher.TeacherModel;

/**
 * 课程控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	@RequestMapping("queryCourseList")
	public ModelAndView queryUserList(PageModel<T> page,CourseModel course){
		PageModel<T> pages=courseService.queryCourseList(page,course);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("course", course);
		map.put("page", pages);
		return new ModelAndView("teacher/courseList","map",map);
	}

	@RequestMapping("bfaddOrUpdate")
	public ModelAndView bfaddCourse(String CourseId){
		CourseModel cm = new CourseModel();
		if(StringUtils.isNotEmpty(CourseId)){
			cm = courseService.queryCourseById(CourseId);
		}
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("course", cm);
		return new ModelAndView("teacher/CourseAddOrUpdate","result",result);
	}
	
	@RequestMapping("addOrUpdate")
	public ModelAndView addCourse(PageModel<T> page,CourseModel course){
		if(!StringUtils.isEmpty(course.getCourseId())){
			courseService.updataCourse(course);
		}else{
			course.setCourseId(UUID.randomUUID()+"");
			/*course.setStateTime(new Date());
			course.setEndTime(new Date());*/
			courseService.addCourse(course);
			String courseId = course.getCourseId();
			
			Map<String,String> map = new HashMap<String, String>();
			map.put("courseId", courseId);
	  }
		return queryUserList(page,new CourseModel());
	}
	
	
	@RequestMapping("/deleteCourseById")
	public ModelAndView deleteCourseById(PageModel<T> page,CourseModel course){
		courseService.deleteCourseById(course);
		return queryUserList(page,new CourseModel());
	}
	//批量删除
		@RequestMapping("/deleteManyCourseById")
		public ModelAndView deleteManyTeacherById(PageModel<T> page,CourseModel course) {
			String arr[] = course.getCids();
			for(int a = 0;a<arr.length;a++){
				String xString = arr[a];
				course.setCourseId(xString);
				courseService.deleteCourseById(course);
			}
			return queryUserList(page,new CourseModel());
		}


}
