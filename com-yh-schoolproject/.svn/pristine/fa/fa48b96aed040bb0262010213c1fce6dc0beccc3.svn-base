package com.yh.ws.service.impl.teacher;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.TeacherService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.TeacherModel;
import com.yh.ws.mapper.teacher.TeacherMapper;
/**
 * 老师实现增删改查的数据库操作
 * */
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherMapper teacherMapper;

	
	
	/** 教师列表分页接口实现 * */
	public PageModel queryTeacherList(PageModel page, TeacherModel teacher) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=teacherMapper.queryTeacherDataCount(teacher);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("teacher", teacher);
		map.put("page", page);
		
		List<TeacherModel> tlist=teacherMapper.queryTeacherList(map);
		page.setList(tlist);
		return page;
	}


	@Override
	public void addTeacher(TeacherModel teacher) {
		teacher.setTeacherId(UUID.randomUUID().toString());
		teacher.setFlagDel(0);
		teacher.setState(0);
		teacher.setTeacherType("teacher");
		teacherMapper.addTeacher(teacher);
		
		String tid = teacher.getTeacherId();
		Map<String,String> map = new HashMap<>();
		map.put("tid", tid);
		List<String> AccountId = teacher.getAccountId();
		for(String accountid : AccountId){
			map.put("id", UUID.randomUUID()+"");
			map.put("accountid", accountid);
			teacherMapper.teacherBindAccount(map);
		}
	}

	@Override
	public void deleteTeacherById(TeacherModel teacher) {
		teacherMapper.deleteTeacherById(teacher);
	}


	/** 学生请假关联老师查询老师*/
	@Override
	public List<TeacherModel> queryList() {
		return teacherMapper.queryList();
	}


	@Override
	public void teacherBindAccount(Map<String, String> map) {
		teacherMapper.teacherBindAccount(map);
	}


	@Override
	public TeacherModel queryTeacherById(String tid) {
		return teacherMapper.queryTeacherById(tid);
	}


	@Override
	public List<TeacherModel> queryClassList() {
		return teacherMapper.queryClassList();
	}

}
