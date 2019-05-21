package com.yh.api.service.teacher;


import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.TeacherModel;

/**
 * 老师功能接口
 * @param <T>
 * */
public interface TeacherService {
	
	

	/** 教师列表接口 * */
	public  PageModel queryTeacherList(PageModel page,TeacherModel teacher);
	
	/*添加*/
	public void addTeacher(TeacherModel teacher);

	/*删除*/
	public void deleteTeacherById(TeacherModel teacher);

	/** 学生请假关联老师查询老师*/
	public List<TeacherModel> queryList();
	
	/** 教师绑定账户接口 * */
	public void teacherBindAccount(Map<String, String> map);

	/*根据id查询列表*/
	public TeacherModel queryTeacherById(String tid);
	

	/** 添加班级选择类型接口 * */
	public List<TeacherModel> queryClassList();
}
