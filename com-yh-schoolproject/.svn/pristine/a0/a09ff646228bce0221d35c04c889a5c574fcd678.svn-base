package com.yh.api.service.teacher;

import java.util.List;

import com.yh.model.page.PageModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.CourseModel;

/**
 * 课程功能接口
 * @param <T>
 * */
public interface CourseService {
	/** 课程列表接口 * */
	public  PageModel queryCourseList(PageModel page,CourseModel course);
	
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
