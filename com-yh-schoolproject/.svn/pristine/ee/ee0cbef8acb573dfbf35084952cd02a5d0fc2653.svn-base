package com.yh.api.service.teacher;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.StudentModel;

/**
 * 学生功能接口
 * @param <T>
 * */
public interface StudentService {

	/** 学生列表接口 * */
	public PageModel queryStudentList(PageModel page,StudentModel student);
	
	/** 学生删除接口 * */
	public void deleteStudent(StudentModel student);
	
	/** 学生添加接口 * */
	public void addStudent(StudentModel student);
	
	/** 根据id查询列 * */
	public StudentModel queryStudentById(String studentId);
	
	/** 学生绑定账户接口 * */
	public void studentBindAccount(Map<String, String> map);
	
	/** 成绩绑定学生接口* */
	public List<StudentModel> queryList();

	/** 班级绑定学生接口* */
	public PageModel queryNoClassList(PageModel page,StudentModel student);
	
	/** 学生绑定班级接口 * */
	//public void studentBindClass(Map<String, String> map);
	 
	//学生写信修改
	public StudentModel update(StudentModel student);
}
