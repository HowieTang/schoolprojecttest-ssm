package com.yh.ws.service.impl.teacher;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.CourseService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.CourseModel;
import com.yh.ws.mapper.teacher.CourseMapper;

@Service("courseService")
public class CourseServiceImpl implements CourseService {


	@Autowired
	private CourseMapper courseMapper;
	
	@Override
	public PageModel queryCourseList(PageModel page, CourseModel course) {

		Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=courseMapper.queryCourseDataCount(course);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("course", course);
		map.put("page", page);
		
		List<CourseModel> tlist=courseMapper.queryCourseList(map);
		page.setList(tlist);
		return page;
	}
	

	@Override
	public void deleteCourseById(CourseModel course) {
		courseMapper.deleteCourseById(course);
	}

	@Override
	public void addCourse(CourseModel course) {
		course.setCourseId(UUID.randomUUID().toString());
		course.setFlagDel(0);
		course.setState(0);
		courseMapper.addCourse(course);
	}
	
	@Override
	public void updataCourse(CourseModel course) {
		courseMapper.updataCourse(course);
	}
	
	@Override
	public CourseModel queryCourseById(String course) {
		return courseMapper.queryCourseById(course);
	}

	/** 成绩绑定课程接口实现 * */
	@Override
	public List<CourseModel> queryList() {
		return courseMapper.queryList();
	}




	
}
