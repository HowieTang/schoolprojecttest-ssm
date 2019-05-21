package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.teacher.CourseModel;


/**
 * 老师增删改查接口
 * */
@Repository
public interface CourseMapper {
	
	
	/** 课程列表分页接口 * */
	public Integer queryCourseDataCount(CourseModel course);
	/** 课程列表接口 * */
	public List<CourseModel> queryCourseList(Map<String, Object> map);
	
	/** 课程添加接口 * */
	public void addCourse(CourseModel course);
	
	/** 课程修改接口 * */
	public void updataCourse(CourseModel course);

	/** 根据ID查询公告列表接口 * */
	public CourseModel queryCourseById(String course);
	
	/*删除*/
	public void deleteCourseById(CourseModel course);

	/** 成绩绑定课程接口 * */
	public List<CourseModel> queryList();

}
