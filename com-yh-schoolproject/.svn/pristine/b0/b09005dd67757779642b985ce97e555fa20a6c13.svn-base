package com.yh.cms.student.controller;

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

import com.yh.api.service.StudentWriteService;
import com.yh.api.service.teacher.StudentService;
import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentLeaveModel;
import com.yh.model.student.StudentWriteModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.StudentModel;
import com.yh.model.teacher.TeacherModel;

@Controller //此注解标识这是一个控制器
@RequestMapping("/studentWrite")
public class StudentWriteController {

	@Autowired
	private StudentWriteService studentWriteService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private StudentService studentService;
	//查询列表和分页
	@RequestMapping("queryStuWriteList")
	public ModelAndView queryStuWriteList(PageModel page,StudentWriteModel stuWrite){
		PageModel pages=studentWriteService.queryStuWritetList(page,stuWrite);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("stuWrite", stuWrite);
		map.put("page", pages);
		return new ModelAndView("student/student_WriteList","map",map);
	}
	//添加之前
	@RequestMapping("bfaddOrUpdate")
	public ModelAndView bfAddOrUpdate(String writeId){
		StudentWriteModel stuWrite = new StudentWriteModel();
		if(!StringUtils.isEmpty(writeId)){
			stuWrite = studentWriteService.queryStuWriteById(writeId);
		}
		List<TeacherModel> teacher = teacherService.queryList();
		List<StudentModel> stu = studentService.queryList();
		Map<String, Object> resultMap =   new HashMap<String, Object>();
		resultMap.put("stuWrite", stuWrite);
		resultMap.put("teacher", teacher);
	    resultMap.put("stu", stu);
		return  new ModelAndView("student/stuWrite_add_update","result",resultMap) ;
	}
	//添加
	@RequestMapping("AddOrUpdate")
	public ModelAndView AddOrUpdate(PageModel page,StudentWriteModel stuWrite){
		
			stuWrite.setWriteId(UUID.randomUUID()+"");
			stuWrite.setState(1);
			studentWriteService.save(stuWrite);
           String swriteId =  stuWrite.getWriteId();
			Map<String, String> map = new HashMap<String, String>();
			map.put("swriteId", swriteId);
			
			List<String> stuid =stuWrite.getStudentId();
			for(String stuId:stuid){
				map.put("id",UUID.randomUUID()+"");
				map.put("stuId",stuId);
				studentWriteService.stuWriteBindStudent(map);
			 }
			
			List<String> teacherid =  stuWrite.getTeacherId();
			for(String tid:teacherid){
			map.put("id",UUID.randomUUID()+"");
			map.put("tid",tid);
			studentWriteService.stuWriteBindTeacher(map);
		     }
			
		return  queryStuWriteList(page,new StudentWriteModel());
	}
	//单个删除
	@RequestMapping("delete")
	public ModelAndView delete(PageModel page,StudentWriteModel stuWrite){
		studentWriteService.delete(stuWrite);
	     return  queryStuWriteList(page,new StudentWriteModel());
        }
	//批量删除
	@RequestMapping("/deleteMany")
	public ModelAndView deleteMany(PageModel page, StudentWriteModel stuWrite) {
		String arr[] = stuWrite.getWriteids();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			stuWrite.setWriteId(xString);
			studentWriteService.delete(stuWrite);
		 }
		 return  queryStuWriteList(page,new StudentWriteModel());
	}
	
	@RequestMapping("bfLook")
	public ModelAndView bfLook(String writeId){
		StudentWriteModel stuWrite = new StudentWriteModel();
		if(!StringUtils.isEmpty(writeId)){
			stuWrite = studentWriteService.queryStuWriteById(writeId);
		}
		//把byte转换成String类型传值
		byte [] c =  stuWrite.getMessageContent();
		String str = new String(c);
		stuWrite.setMessageContents(str);
		Map<String, Object> resultMap =   new HashMap<String, Object>();
		resultMap.put("stuWrite", stuWrite);
		return  new ModelAndView("student/stuWrite_look","result",resultMap) ;
	}
	
	@RequestMapping("look")
	public ModelAndView look(PageModel page,StudentWriteModel stuWrite){
		return  queryStuWriteList(page,new StudentWriteModel());
	}
}