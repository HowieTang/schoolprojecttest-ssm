package com.yh.api.service.teacher;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.StudentModel;
//班级Service
public interface CclassService {


	/** 班级列表接口 * */
	public  PageModel queryCclassList(PageModel page,CclassModel cclass);
	
	/** 班级添加接口 * */
	public void addCclass(CclassModel cclass);
	
	/** 班级修改接口 * */
	public void updataCclass(CclassModel cclass);

	/** 根据ID查询班级列表接口 * */
	public CclassModel queryCclassById(String cclass);
	
	/*删除*/
	public void deleteCclassById(CclassModel cclass);
	
	

	/** 班级绑定学生接口 * */
	public void classBindStudent(Map<String, String> map);
	
	
	/** 学生绑定班级接口 * */
	/** 成绩绑定班级接口 * */
	public List<CclassModel> queryList();

	/** 班级绑定教师接口 * */
	public void classBindTeacher(Map<String, String> map);

}
