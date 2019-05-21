package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.sys.DicModel;




@Repository
public interface StudentNewsMapper {
	
	//分页列表接口
	public Integer queryStuNewsDataCount(StudentNewsModel snm);
	
	/** 数据字典列表接口 * */
	public List<StudentNewsModel> queryStuNewsList(Map<String, Object> map);
	
	/*添加*/
	public void addDic(StudentNewsModel snm);
	

}
