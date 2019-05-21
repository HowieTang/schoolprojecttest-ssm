package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.page.PageModel;
import com.yh.model.teacher.TeacherNotesModel;



/**
 * 教师笔记增删改查接口
 * */
@Repository
public interface TeacherNotesMapper {
	
	/** 教师笔记列表接口 * */
	public List<TeacherNotesModel> queryTeacherNotesList(Map<String, Object> map);
	
	/** 教师笔记列表分页接口 * */
	public Integer queryDataCount(TeacherNotesModel teacherNotes);
	
	/** 教师笔记删除接口 * */
	public void deleteTeacherNotes(TeacherNotesModel teacherNotes);
	
	/** 教师笔记添加接口 * */
	public void addTeacherNotes(TeacherNotesModel teacherNotes);
	
	/** 教师笔记修改接口 * */
	//public void updataCircular(CircularModel circular);

	/** 根据ID查询教师笔记列表接口 * */
	public TeacherNotesModel queryTeacherNotesById(String teacherNotesId);
	
	/** 教学笔记绑定教师接口 * */
	public void teacherNotesBindTeacher(Map<String, String> map);
	

}
