package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.teacher.CclassModel;


/**
 * 老师增删改查接口
 * */
@Repository
public interface CclassMapper {
	
	
	/** 班级列表分页接口 * */
	public Integer queryCourseDataCount(CclassModel cclass);
	/** 班级列表接口 * */
	public List<CclassModel> queryCclassList(Map<String, Object> map);
	
	/** 班级添加接口 * */
	public void addCclass(CclassModel cclass);
	
	/** 班级修改接口 * */
	public void updataCclass(CclassModel cclass);

	/** 根据ID查询班级列表接口 * */
	public CclassModel queryCclassById(String cclass);
	
	/*删除*/
	public void deleteCclassById(CclassModel cclass);

	/** 班级绑定学生接口 * */
	public void classBindStudent(Map<String, String> String);
	
	/** 学生绑定班级接口 * */
	/** 成绩绑定班级接口 * */
	public List<CclassModel> queryList();
	
	/** 班级绑定教师接口 * */
	public void classBindTeacher(Map<String, String> map);

}
