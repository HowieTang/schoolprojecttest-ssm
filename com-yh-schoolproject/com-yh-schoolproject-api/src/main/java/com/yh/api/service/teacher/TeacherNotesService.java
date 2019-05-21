package com.yh.api.service.teacher;

import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.teacher.TeacherNotesModel;

/**
 * 教师笔记功能接口
 * @param <T>
 * */
public interface TeacherNotesService {
	
	/**教师笔记列表接口 * */
	public PageModel queryTeacherNotesList(PageModel page,TeacherNotesModel teacherNotes);
	
	/** 教师笔记删除接口 * */
	public void deleteTeacherNotes(TeacherNotesModel teacherNotes);
	
	/** 教师笔记添加接口 * */
	public void addTeacherNotes(TeacherNotesModel teacherNotes);
	
	/** 教师笔记修改接口 * */
	//public void updataCircular(CircularModel circular);

	/** 根据ID查询教师笔记列表接口 * */
	public TeacherNotesModel queryTeacherNotesById(String teacherNotesId);
	
	/** 教学笔记绑定教师接口 * */
	//public void teacherNotesBindTeacher(Map<String, String> map);
	

}
