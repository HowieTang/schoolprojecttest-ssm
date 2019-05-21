package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.page.PageModel;
import com.yh.model.teacher.StudentModel;

/**
 * 学生增删改查接口
 * */
@Repository
public interface StudentMapper {
	
	/** 学生列表接口 * */
	public List<StudentModel> queryStudentList(Map<String, Object> map);
	
	/** 学生列表分页接口 * */
	public Integer queryDataCount(StudentModel student);
	
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
	public List<StudentModel> queryNoClassList(Map<String, Object> map);
	public Integer queryDataCount2(StudentModel student);
	/** 学生绑定班级接口 * */
	//public void studentBindClass(Map<String, String> map);
	
	//学生写信修改
	public StudentModel update(StudentModel student);
}

