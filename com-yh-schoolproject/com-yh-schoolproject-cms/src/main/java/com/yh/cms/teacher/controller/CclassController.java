package com.yh.cms.teacher.controller;

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

import com.yh.api.service.teacher.CclassService;
import com.yh.api.service.teacher.StudentService;
import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.StudentModel;
import com.yh.model.teacher.TeacherModel;

/**
 * 课程控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/cclass")
public class CclassController {

	@Autowired
	private CclassService cclassService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("queryCclassList")
	public ModelAndView queryCclassList(PageModel<T> page,CclassModel cclass){
		PageModel<T> pages=cclassService.queryCclassList(page,cclass);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("cclass", cclass);
		map.put("page", pages);
		return new ModelAndView("teacher/cclassList","map",map);
	}

	@RequestMapping("bfaddOrUpdate")
	public ModelAndView bfaddCclass(String CclassId,String studentId){
		CclassModel cm = new CclassModel();
		StudentModel sm = new StudentModel();
		if(StringUtils.isNotEmpty(CclassId)){
			cm = cclassService.queryCclassById(CclassId);
			/*sm = studentService.queryStudentById(studentId);*/
		}
		List<CclassModel>	cm1 = cclassService.queryList();
		//查询出没有班级的学生返回至添加页面
		/*List<StudentModel> students = studentService.queryClassList();*/
		//查询出所有教师返回至添加页面
		List<TeacherModel> teachers = teacherService.queryClassList();
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("cclass1", cm1);
		result.put("cclass", cm);
		result.put("students", sm);
		result.put("teachers", teachers);
		return new ModelAndView("teacher/CclassAddOrUpdate","result",result);
	}
	
	@RequestMapping("addOrUpdate")
	public ModelAndView addCourse(PageModel<T> page,CclassModel cclass){
		if(!StringUtils.isEmpty(cclass.getClassId())){
			cclassService.updataCclass(cclass);
		}else{
			cclass.setClassId(UUID.randomUUID()+"");
			cclass.setFlagDel(0);
			cclass.setState(0);
			cclassService.addCclass(cclass);
			
			String cclassId = cclass.getClassId();
			Map<String,String> map = new HashMap<String, String>();
			
			map.put("cclassId", cclassId);
			List<String> stuids =  cclass.getStudentId();
			for(String sid:stuids){
				map.put("id", UUID.randomUUID()+"");
				map.put("sid",sid);
				cclassService.classBindStudent(map);
				}
			List<String> teacherids =  cclass.getTeacherId();
			for(String tid:teacherids){
				map.put("id", UUID.randomUUID()+"");
				map.put("tid",tid);
				cclassService.classBindTeacher(map);
				}
	  }
		return queryCclassList(page,new CclassModel());
	}
	
	
	@RequestMapping("/deleteCclassById")
	public ModelAndView deleteCourseById(PageModel<T> page,CclassModel cclass){
		cclassService.deleteCclassById(cclass);
		return queryCclassList(page,new CclassModel());
	}

	//批量删除
		@RequestMapping("/deleteManyCclassById")
		public ModelAndView deleteManyTeacherById(PageModel<T> page,CclassModel cclass) {
			String arr[] = cclass.getCcids();
			for(int a = 0;a<arr.length;a++){
				String xString = arr[a];
				cclass.setClassId(xString);
				cclassService.deleteCclassById(cclass);
			}
			return queryCclassList(page,new CclassModel());
		}
		
}
