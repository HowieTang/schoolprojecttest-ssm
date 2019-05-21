package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;


import com.yh.model.teacher.StudentModel;



import com.yh.model.teacher.TeacherModel;


/**
 * 老师增删改查接口
 * */
@Repository
public interface TeacherMapper {
	
	
	/** 教师列表分页接口 * */
	public Integer queryTeacherDataCount(TeacherModel teacher);
	/** 教师列表接口 * */
	public List<TeacherModel> queryTeacherList(Map<String, Object> map);
	
	/*添加*/
	public void addTeacher(TeacherModel teacher);

	/*删除*/
	public void deleteTeacherById(TeacherModel teacher);
	
    /** 学生请假关联啊查询教师表方法*/
	public List<TeacherModel> queryList();
	
	/** 根据id查询列 * */
	public TeacherModel queryTeacherById(String tid);
	
	/** 教师绑定账户接口 * */
	public void teacherBindAccount(Map<String, String> map);
	
	/** 添加班级选择类型接口 * */
	public List<TeacherModel> queryClassList();
}



