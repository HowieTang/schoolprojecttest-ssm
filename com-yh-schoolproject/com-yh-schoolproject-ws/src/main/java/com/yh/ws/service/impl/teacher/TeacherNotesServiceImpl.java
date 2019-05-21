package com.yh.ws.service.impl.teacher;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.yh.api.service.teacher.TeacherNotesService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.TeacherNotesModel;
import com.yh.ws.mapper.teacher.TeacherNotesMapper;

/**
 * 教师笔记实现增删改查的数据库操作
 * */
@Service("teacherNotesService")
public class TeacherNotesServiceImpl implements TeacherNotesService {

	@Autowired
	private TeacherNotesMapper teacherNotesMapper;
	
	/** 教师笔记列表分页接口实现 * */
	@Override
	public PageModel queryTeacherNotesList(PageModel page, TeacherNotesModel teacherNotes) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int dataCount=teacherNotesMapper.queryDataCount(teacherNotes);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
		String loginName = teacherNotes.getLoginName();
		teacherNotes.setLoginName(loginName);
		
		map.put("teacherNotes", teacherNotes);
		map.put("page", page);
		
		
		
		List<TeacherNotesModel> tlist=teacherNotesMapper.queryTeacherNotesList(map);
		page.setList(tlist);
		return page;
	}

	/** 教师笔记列表删除接口实现 * */
	@Override
	public void deleteTeacherNotes(TeacherNotesModel teacherNotes) {
		teacherNotesMapper.deleteTeacherNotes(teacherNotes);
	}

	/** 根据ID查询教师笔记列表接口实现 * */
	@Override
	public TeacherNotesModel queryTeacherNotesById(String teacherNotesId) {
		return teacherNotesMapper.queryTeacherNotesById(teacherNotesId);
	}

	/** 教师笔记列表添加接口实现 * */
	@Override
	public void addTeacherNotes(TeacherNotesModel teacherNotes) {
		teacherNotes.setTeacherNotesId(UUID.randomUUID().toString());
		teacherNotes.setFlagDel(0);
		teacherNotesMapper.addTeacherNotes(teacherNotes);
		/*String teacherNotesId = teacherNotes.getTeacherNotesId();
		Map<String,String> map = new HashMap<>();
		map.put("teacherNotesId", teacherNotesId);
		List<String> teacherId = teacherNotes.getTid();
		for(String teacherid : teacherId){
			map.put("id", UUID.randomUUID()+"");
			map.put("teacherid", teacherid);
			teacherNotesMapper.teacherNotesBindTeacher(map);
		}*/
	}

	/** 教学笔记绑定教师接口实现 * */
	/*@Override
	public void teacherNotesBindTeacher(Map<String, String> map) {
		teacherNotesMapper.teacherNotesBindTeacher(map);
	}*/

	
	
	
}
